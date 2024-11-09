{ lib, pkgs, vars, ... }:

with lib; mkIf (vars.os.desktop == "awesome" || vars.os.desktop == "i3") {
  services.picom = {
    enable = true;
    backend = "glx"; # or "egl", "xrender", "xr_glx_hybrid"
    extraArgs = [];
    fade = true;
    fadeDelta = 10;
    fadeExclude = [
      "class_g = 'Notify-osd'"
      "class_g = 'Dunst'"  # Example: exclude dunst notifications
    ];
    fadeSteps = [ 0.03 0.03 ];
    inactiveOpacity = 0.95;
    activeOpacity = 0.95;
    menuOpacity = 0.95;
    opacityRules = [
      "95:class_g = 'Alacritty'" # Example: Alacritty at 95% opacity
    ];
    package = pkgs.picom; # or specify a different package like picom-ibhagwan

    # Example settings (see picom(1) for all options)
    settings = {
      shadow = true;
      shadow-opacity = 0.6;
      shadow-offsets = [
        (-15) (-15)
      ];
      shadow-exclude = [
        "class_g ?= 'Dunst'"
        "_NET_WM_STATE@:32a *= '_NET_WM_STATE_STICKY'" # Exclude sticky windows
        "override_redirect = true"
        "class_g = 'xdg-desktop-portal-gnome'"
      ];
      vSync = true;
      blur = {
        method = "dual_kawase";
        strength = 5;
        deviation = 5;
      };
      blur-background-exclude = [
        "window_type = 'menu'"
        "window_type = 'dropdown_menu'"
        "window_type = 'popup_menu'"
        "window_type = 'tooltip'"
        "_GTK_FRAME_EXTENTS@:c" # fix gtk borders in some apps
      ];

      transparent-clipping = false;

      # Example wintypes configuration
       wintypes = {
        tooltip = {
          fade = false;
          shadow = false;
        };
      };
       
       # Example rounded corners
       corner-radius = 0;
    };

     # Example wintypes configuration that overrides the default settings
    wintypes = {
      tooltip = {
        fade = false;
        shadow = false;
      };
      dock = {
         shadow = true;
      };
    };
  };
 # xdg.configFile."picom/picom.conf".text = ''
  #   ${fileContents ../repo/config/picom/picom.conf}
  # '';
}