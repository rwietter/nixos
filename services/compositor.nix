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
			shadow-opacity = 0.45;

			shadow-radius = 18;

			shadow-offsets = [
				(-12)
				(-12)
			];

			vSync = true;

			blur = {
				method = "dual_kawase";
				strength = 12;
				deviation = 12;
			};

			active-opacity = 0.72;
			inactive-opacity = 0.65;

			frame-opacity = 0.70;

			opacityRules = [
				"70:class_g = 'Alacritty'"
				"70:class_g = 'org.wezfurlong.wezterm'"
				"75:class_g = 'kitty'"
			];

			blur-background = true;

			blur-background-exclude = [
				"window_type = 'dock'"
				"window_type = 'desktop'"
				"window_type = 'menu'"
				"window_type = 'dropdown_menu'"
				"window_type = 'popup_menu'"
				"window_type = 'tooltip'"
				"_GTK_FRAME_EXTENTS@:c"
			];

			transparent-clipping = false;

			detect-client-opacity = true;

			corner-radius = 12;

			use-damage = false;

			resize-damage = 6;

			glx-no-stencil = true;
			glx-no-rebind-pixmap = true;
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
