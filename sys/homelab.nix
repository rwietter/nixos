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
      description = "Backup of SQLite databases with ntfy notification";

      script = ''
        exec ${pkgs.bash}/bin/bash ${vars.os.homeDirectory}/nixos/scripts/homelab.backup.sh
      '';

      serviceConfig = {
        Type = "oneshot";
        User = "${vars.os.hostname}"; # Run as the user of the homelab.
      };
    };

    systemd.timers.sqlite-backup = {
      description = "Triggers the backup of SQLite databases daily at 03:00";
      wantedBy = [ "timers.target" ];
      timerConfig = {
        # Runs daily at 03:00. You can use "daily" to run at midnight.
        OnCalendar = "*-*-* 03:00:00";
        Persistent = true; # If the machine was off at 3am, it runs as soon as it starts.
      };
    };
  };
}
