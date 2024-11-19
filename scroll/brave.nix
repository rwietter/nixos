{ config, lib, pkgs, ... }: {
  options = {
    brave.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable Brave browser";
    };
  };

  config = lib.mkIf config.brave.enable {
    home.packages = [
      pkgs.brave
    ];

    xdg.configFile = lib.mkForce {
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
  };
}