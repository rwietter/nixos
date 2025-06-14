{
  config,
  lib,
  pkgs,
  vars,
  ...
}:

/**
  * Reference: https://landchad.net/yarr/
  * Future:
  * - Deploy and hosting with docker or nixops
  * - https://hub.docker.com/r/maskalicz/yarr
  * - https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/get-started/create-local-tunnel/
*/
let
  address = "127.0.0.1:7070"; # Address and port to bind Yarr
  authFile = "${vars.os.homeDirectory}/.config/yarr/auth.conf"; # Path to the authentication file
  dbFile = "${vars.os.homeDirectory}/.config/yarr/storage.db"; # Path to the database file
  logFile = "${vars.os.homeDirectory}/.config/yarr/access.log"; # Path to the log file
  user = vars.os.hostname;
in
{
  options = {
    services.rss.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable Yarr";
    };
  };

  config = lib.mkIf config.services.yarr.enable {
    systemd.services.yarr = {
      description = "Yarr";
      wantedBy = [ "multi-user.target" ];
      after = [ "network.target" ];

      serviceConfig = {
        ExecStart = "${pkgs.yarr}/bin/yarr -addr ${address} -auth-file=${authFile} -db=${dbFile} -log-file=${logFile}";
        Restart = "on-failure";
        User = user;
        Environment = "HOME=/home/${user}";
      };
    };
    environment.systemPackages = [
      pkgs.yarr
    ];
  };
}
