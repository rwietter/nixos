{
  pkgs,
  config,
  lib,
  vars,
  ...
}:

{
  options = {
    homelab.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the homelab services.";
    };
  };

  config = lib.mkIf config.homelab.enable {
    systemd.services.homelab-backup = {
      description = "Backup of homelab data and configuration";

      script = ''
        exec ${pkgs.bash}/bin/bash ${vars.os.homeDirectory}/nixos/scripts/homelab.backup.sh
      '';

      # Add these packages to the PATH so that the script can use them.
      path = with pkgs; [
        coreutils # Provide: basename, mkdir, rm, echo, date
        gawk # Provide: awk
        gnutar # Provide: tar
        gzip # Needed for tar compression
        sqlite
        curl
        rclone
      ];

      serviceConfig = {
        Type = "oneshot";
        User = "${vars.os.hostname}"; # Run as the user of the homelab.
      };
    };

    systemd.timers.homelab-backup = {
      description = "Triggers the backup of homelab data and configuration daily at 12:00";
      wantedBy = [ "timers.target" ];
      timerConfig = {
        # Runs daily at 12:00. You can use "daily" to run at midnight.
        OnCalendar = "*-*-* 12:00:00"; # Runs at 12:00pm.
        Persistent = true; # If the machine was off at 12pm, it runs as soon as it starts.
      };
    };
  };
}
