{ pkgs, ... }:

{
  users.users.rwietter = {
    packages = with pkgs; [
      earlyoom
    ];
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
}