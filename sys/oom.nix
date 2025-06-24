{
  pkgs,
  lib,
  config,
  ...
}:

{
  options = {
    earlyoom.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Early OOM Daemon";
    };
  };

  config = lib.mkIf config.earlyoom.enable {
    services.earlyoom = {
      enable = true;
      package = pkgs.earlyoom;
      enableNotifications = true;
    };
    systemd = {
      services.earlyoom = {
        description = "Early OOM Daemon";
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
          Type = "simple";
          ExecStart = "${pkgs.earlyoom}/bin/earlyoom";
        };
      };
    };
  };
}
