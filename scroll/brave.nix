{ config, lib, pkgs, ... }:

with lib; {
  home.packages = with pkgs; [
    brave
  ];

  xdg.configFile = mkForce {
    "mimeapps.list" = {
      text = ''
        [Default Applications]
        "text/html" = "brave-browser.desktop";
        "x-scheme-handler/http" = "brave-browser.desktop";
        "x-scheme-handler/https" = "brave-browser.desktop";
        "x-scheme-handler/about" = "brave-browser.desktop";
        "x-scheme-handler/unknown" = "brave-browser.desktop";
      '';
    };
  };

  home.sessionVariables = {
    DEFAULT_BROWSER = "${pkgs.brave}/bin/brave";
  };
}