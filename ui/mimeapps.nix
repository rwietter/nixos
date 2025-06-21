{ config, lib, pkgs, ... }:

with lib; {
  xdg.configFile = mkForce {
    "mimeapps.list" = {
      force = true;
      text = ''
        ${fileContents ../repo/config/mimeapps.list}
      '';
    };
  };
}