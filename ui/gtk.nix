{
	newTheme,
  lib,
  vars,
  ...
}:

{
  gtk = {
    enable = true;
    theme = {
			name = newTheme.integrations.gtk.theme.name;
			package = newTheme.integrations.gtk.theme.package;
    };
    iconTheme = {
      name = newTheme.integrations.gtk.icon.name;
      package = newTheme.integrations.gtk.icon.package;
    };
    font = {
      name = vars.os.font.mono;
      size = 12;
    };
    cursorTheme = {
      name = newTheme.integrations.gtk.cursor.name;
      package = newTheme.integrations.gtk.cursor.package;
      size = 24;
    };
  };

  home.pointerCursor = {
    name = newTheme.integrations.gtk.cursor.name;
    package = newTheme.integrations.gtk.cursor.package;
    size = 24;
  };

  xdg.configFile = lib.mkForce {
    "gtk-3.0/settings.ini" = {
      force = true;
      text = ''
        [Settings]
        gtk-theme-name = ${newTheme.integrations.gtk.theme.name}
        gtk-icon-theme-name = ${newTheme.integrations.gtk.icon.name}
        gtk-font-name = ${vars.os.font.sans} 12
        gtk-cursor-theme-size = 24
        gtk-toolbar-style = GTK_TOOLBAR_BOTH_HORIZ
        gtk-toolbar-icon-size = GTK_ICON_SIZE_LARGE_TOOLBAR
        gtk-button-images = 1
        gtk-xft-dpi = 71680
        gtk-menu-images = 1
        gtk-enable-event-sounds = 1
        gtk-xft-antialias = 1
        gtk-xft-hinting = 1
        gtk-xft-hintstyle = hintfull
        gtk-xft-rgba = rgb
				gtk-cursor-theme-name = ${newTheme.integrations.gtk.cursor.name}
        gtk-application-prefer-dark-theme="${if vars.appearance.mode == "dark" then "1" else "0"}"
      '';
    };

    "gtk-4.0/settings.ini" = {
      force = true;
      text = ''
        [Settings]
				gtk-theme-name = ${newTheme.integrations.gtk.theme.name}
        gtk-icon-theme-name = ${newTheme.integrations.gtk.icon.name}
        gtk-font-name = ${vars.os.font.sans} 12
        gtk-cursor-theme-size = 24
        gtk-toolbar-style = GTK_TOOLBAR_BOTH_HORIZ
        gtk-toolbar-icon-size = GTK_ICON_SIZE_LARGE_TOOLBAR
        gtk-button-images = 1
        gtk-menu-images = 1
        gtk-enable-event-sounds = 1
        gtk-xft-antialias = 1
        gtk-xft-hinting = 1
        gtk-xft-hintstyle = hintfull
        gtk-xft-rgba = rgb
        gtk-cursor-theme-name = ${newTheme.integrations.gtk.cursor.name}
        gtk-application-prefer-dark-theme="${if vars.appearance.mode == "dark" then "1" else "0"}"
      '';
    };
  };

  # Para GNOME/GTK-based DEs que usam gsettings
  dconf.settings = lib.mkForce {
    "org/gnome/desktop/interface" = {
      gtk-theme = newTheme.integrations.gtk.theme.name;
      icon-theme = newTheme.integrations.gtk.icon.name;
      cursor-theme = newTheme.integrations.gtk.cursor.name;
      font-name = "${vars.os.font.sans} 12";
      monospace-font-name = "${vars.os.font.mono} 12";
      color-scheme = if vars.appearance.mode == "dark" then "prefer-dark" else "default";
    };
    "org/gnome/desktop/wm/preferences" = {
      # Para o tema do Window Manager (border, title bar)
      theme = newTheme.integrations.gtk.theme.name;
    };
  };

  home.sessionVariables = {
    GTK_THEME = newTheme.integrations.gtk.theme.name;
    GTK_ICON_THEME = newTheme.integrations.gtk.icon.name;
    GTK_FONT_NAME = "${vars.os.font.sans} 12";
    GTK_CURSOR_THEME = newTheme.integrations.gtk.cursor.name;
    GTK_APPLICATION_PREFER_DARK_THEME = if vars.appearance.mode == "dark" then "1" else "0";
  };
}
