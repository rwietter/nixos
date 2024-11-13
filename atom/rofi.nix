{ lib, themes, vars, ...}:

with lib; {
  rofi = {
    enable = true;
    package = pkgs.rofi;
  }

  xdg.configFile = mkForce {
    "awesome/misc/rofi/themes/apps.rasi" = {
      force = true;
      text = ''
        configuration {
          font:							      ${vars.os.font.sans} 12;
          show-icons:             true;
          icon-theme: 					  ${themes.gtk."${vars.appearance.theme}".iconTheme.name};
          display-drun: 					"";
          drun-display-format:    "{name}";
          disable-history:        false;
          sidebar-mode: 					false;
        }

        * {
            background:            ${themes.gtk."${vars.appearance.theme}".bg.root}BF;
            background-alt:        ${themes.gtk."${vars.appearance.theme}".bg.fade}00;
            background-bar:        ${themes.gtk."${vars.appearance.theme}".bg.fade}15;
            foreground:            ${themes.gtk."${vars.appearance.theme}".fg.shift}EE;
            accent:			           ${themes.gtk."${vars.appearance.theme}".cyan.shift};
        }
      '';
    };

    "awesome/misc/rofi/themes/windows.rasi" = {
      text = ''
        configuration {
          font:						      ${vars.os.font.sans} 12;
          modes: 								"window";
          sort: 								true;
          hover-select: 				true;
          auto-select: 					true;
          window-format: 				"{c}";
          threads: 							4;
          show-icons:            true;
          icon-theme: 					 ${themes.gtk."${vars.appearance.theme}".iconTheme.name};
          disable-history:       false;
          sidebar-mode: 				 false;
        }

        * {
          background:       ${themes.gtk."${vars.appearance.theme}".bg.root}BF;
          background-alt:   ${themes.gtk."${vars.appearance.theme}".bg.fade}00;
          background-bar:   ${themes.gtk."${vars.appearance.theme}".bg.fade}15;
          foreground:       ${themes.gtk."${vars.appearance.theme}".fg.shift}EE;
          accent:			      ${themes.gtk."${vars.appearance.theme}".cyan.shift};
        }
      '';
    };
  };
}