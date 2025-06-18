{
  lib,
  theme,
  vars,
  config,
  pkgs,
  ...
}:

with lib; {
  options = {
    rofi.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable rofi";
    };
  };

  config = lib.mkIf config.rofi.enable {
    programs.rofi = {
      enable = true;
      package = pkgs.rofi;
      plugins = [ pkgs.rofi-emoji ];
    };

    xdg.configFile = lib.mkForce {
      "/rofi/window/colors.rasi" = {
        text = ''
            * {
              background: "${theme.scheme.variants."${vars.appearance.theme}".bg.root}";
              background-alt: "${theme.scheme.variants."${vars.appearance.theme}".bg.shift}";
              foreground: "${theme.scheme.variants."${vars.appearance.theme}".fg.root}";
              selected: "${theme.scheme.variants."${vars.appearance.theme}".blue.shift}";
              active: "${theme.scheme.variants."${vars.appearance.theme}".green.shift}";
              urgent: "${theme.scheme.variants."${vars.appearance.theme}".red.shift}";
            }
        '';
        force = true;
      };
    };
  };
}
