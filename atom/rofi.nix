{
  lib,
  theme,
  vars,
  config,
  pkgs,
  ...
}:
let
  colorscheme = if vars.appearance.theme == "dark" then "lovelace" else "yousai";
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
      "/awesome/misc/rofi/themes/colors.rasi" = {
        force = true;
        text = ''
          /**
          *
          * Author : Aditya Shakya (adi1090x)
          * Github : @adi1090x
          * 
          * Colors
          *
          * Available Colors Schemes
          *
          * adapta    catppuccin    everforest    navy       paper
          * arc       cyberpunk     gruvbox       nord       solarized
          * black     dracula       lovelace      onedark    yousai
          *
          **/

          /* Import color-scheme from `colors` directory */

          @import "../vivid/${colorscheme}.rasi";
        '';
      };
    };
  };
}
