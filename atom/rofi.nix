{
  lib,
  theme,
  vars,
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
      "awesome/misc/rofi/themes/apps.rasi" = {
        force = true;
        text = ''
          configuration {
            font:							      "${vars.os.font.sans} 12";
            show-icons:             true;
            icon-theme: 					  "${theme.gtk."${vars.appearance.theme}".iconTheme.name}";
            display-drun: 					"";
            drun-display-format:    "{name}";
            disable-history:        false;
            sidebar-mode: 					false;
          }

          * {
              background:            ${theme.scheme.variants."${vars.appearance.theme}".bg.root}BF;
              background-alt:        ${theme.scheme.variants."${vars.appearance.theme}".fg.fade}00;
              background-bar:        ${theme.scheme.variants."${vars.appearance.theme}".fg.fade}15;
              foreground:            ${theme.scheme.variants."${vars.appearance.theme}".fg.root}EE;
              accent:			           ${theme.scheme.variants."${vars.appearance.theme}".cyan.shift}66;
          }
        '';
      };

      "awesome/misc/rofi/themes/windows.rasi" = {
        text = ''
          configuration {
            font:						      "${vars.os.font.sans} 12";
            modes: 								"window";
            sort: 								true;
            hover-select: 				true;
            auto-select: 					true;
            window-format: 				"{c}";
            threads: 							4;
            show-icons:            true;
            icon-theme: 					 "${theme.gtk."${vars.appearance.theme}".iconTheme.name}";
            disable-history:       false;
            sidebar-mode: 				 false;
          }

          * {
            background:       ${theme.scheme.variants."${vars.appearance.theme}".bg.root}BF;
            background-alt:   ${theme.scheme.variants."${vars.appearance.theme}".fg.fade}00;
            background-bar:   ${theme.scheme.variants."${vars.appearance.theme}".fg.fade}15;
            foreground:       ${theme.scheme.variants."${vars.appearance.theme}".fg.root}EE;
            accent:			      ${theme.scheme.variants."${vars.appearance.theme}".cyan.shift}66;
          }
        '';
      };
    };
  };
}
