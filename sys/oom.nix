{ pkgs, lib, vars, ... }:

with lib; mkIf(vars.os.oom == true) {
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