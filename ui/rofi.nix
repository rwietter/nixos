{
  lib,
	newTheme,
  config,
  pkgs,
  ...
}:
{
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
      "awesome/misc/rofi/window/colors.rasi" = {
        text = ''
            * {
              background:     ${newTheme.tokens.bg.base};
              background-alt: ${newTheme.tokens.bg.surface};
              foreground:     ${newTheme.tokens.fg.base};
              selected:       ${newTheme.tokens.bg.highlight};
              active:         ${newTheme.tokens.bg.highlight};
              urgent:         ${newTheme.tokens.feedback.warning};
            }
        '';
        force = true;
      };
    };
  };
}
