{
  lib,
  pkgs,
  vars,
  ...
}:

lib.mkIf (vars.os.desktop == "awesome") {
  services.picom = {
    enable = true;
    backend = "glx"; # or "egl", "xrender", "xr_glx_hybrid"
    extraArgs = [ ];
    fade = true;
    fadeDelta = 10;
    fadeExclude = [ ];
    fadeSteps = [
      3.0e-2
      3.0e-2
    ];
    menuOpacity = 1;
    opacityRules = [
      "95:class_g = 'Alacritty'"
    ];
    package = pkgs.picom;
    settings = {
      shadow = true;
      shadow-opacity = 0.6;
      shadow-offsets = [
        (-15)
        (-15)
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
      corner-radius = 0;
    };
  };

  xdg.configFile = lib.mkForce {
    "picom/picom.conf" = {
      text = ''
        ${lib.fileContents ../repo/config/picom/picom.conf}
      '';
    };
  };
}
