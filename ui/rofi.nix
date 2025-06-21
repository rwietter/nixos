{
  lib,
  theme,
  vars,
  config,
  pkgs,
  ...
}:
let colors = theme.scheme.variants."${vars.appearance.theme}";
in
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
              background:     ${colors.bg.root};
              background-alt: ${colors.bg.shift};
              foreground:     ${colors.fg.root};
              selected:       ${colors.fg.root};
              active:         ${colors.bg.echo};
              urgent:         ${colors.fg.echo};
            }
        '';
        force = true;
      };
    };
  };
}
