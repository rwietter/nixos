{
  config,
  pkgs,
  theme,
  lib,
  vars,
  ...
}:

with lib;
{
  gtk = {
    enable = true;
    theme = {
      name = theme.gtk."${vars.appearance.theme}".theme.name;
      package = pkgs."${theme.gtk."${vars.appearance.theme}".theme.package}";
    };
    iconTheme = {
      name = theme.gtk."${vars.appearance.theme}".iconTheme.name;
      package = pkgs."${theme.gtk."${vars.appearance.theme}".iconTheme.package}";
    };
    font = {
      name = vars.os.font.mono;
      size = 12;
    };
    cursorTheme = {
      name = theme.gtk."${vars.appearance.theme}".cursor.name;
      package = pkgs."${theme.gtk."${vars.appearance.theme}".cursor.package}";
      size = 24;
    };
  };

  home.pointerCursor = {
    name = theme.gtk."${vars.appearance.theme}".cursor.name;
    package = pkgs."${theme.gtk."${vars.appearance.theme}".cursor.package}";
    size = 24;
  };

  xdg.configFile = lib.mkForce {
    "gtk-3.0/settings.ini" = {
      force = true;
      text = ''
        [Settings]
        gtk-theme-name = ${theme.gtk."${vars.appearance.theme}".theme.name}
        gtk-icon-theme-name = ${theme.gtk."${vars.appearance.theme}".iconTheme.name}
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
        gtk-cursor-theme-name = ${theme.gtk."${vars.appearance.theme}".cursor.name}
        gtk-application-prefer-dark-theme="${if vars.appearance.theme == "dark" then "1" else "0"}"
      '';
    };

    "gtk-4.0/settings.ini" = {
      force = true;
      text = ''
        [Settings]
        gtk-theme-name = ${theme.gtk."${vars.appearance.theme}".theme.name}
        gtk-icon-theme-name = ${theme.gtk."${vars.appearance.theme}".iconTheme.name}
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
        gtk-cursor-theme-name = ${theme.gtk."${vars.appearance.theme}".cursor.name}
        gtk-application-prefer-dark-theme="${if vars.appearance.theme == "dark" then "1" else "0"}"
      '';
    };
  };

  # Para GNOME/GTK-based DEs que usam gsettings
  dconf.settings = lib.mkForce {
    "org/gnome/desktop/interface" = {
      gtk-theme = theme.gtk."${vars.appearance.theme}".theme.name;
      icon-theme = theme.gtk."${vars.appearance.theme}".iconTheme.name;
      cursor-theme = theme.gtk."${vars.appearance.theme}".cursor.name;
      font-name = "${vars.os.font.sans} 12";
      monospace-font-name = "${vars.os.font.mono} 12";
      color-scheme = if vars.appearance.theme == "dark" then "prefer-dark" else "default";
    };
    "org/gnome/desktop/wm/preferences" = {
      # Para o tema do Window Manager (border, title bar)
      theme = theme.gtk."${vars.appearance.theme}".theme.name;
    };
  };

  home.sessionVariables = {
    GTK_THEME = theme.gtk."${vars.appearance.theme}".theme.name;
    GTK_ICON_THEME = theme.gtk."${vars.appearance.theme}".iconTheme.name;
    GTK_FONT_NAME = "${vars.os.font.sans} 12";
    GTK_CURSOR_THEME = theme.gtk."${vars.appearance.theme}".cursor.name;
    GTK_APPLICATION_PREFER_DARK_THEME = if vars.appearance.theme == "dark" then "1" else "0";
  };

  # home.file.".profile".text = ''
  #   ${fileContents ../repo/.profile}

  #   export GTK_THEME="${theme.gtk."${vars.appearance.theme}".theme.name}"
  #   export GTK_ICON_THEME="${theme.gtk."${vars.appearance.theme}".iconTheme.name}"
  #   export GTK_FONT_NAME="${vars.os.font.sans} 12"
  #   export GTK_CURSOR_THEME="${theme.gtk."${vars.appearance.theme}".cursor.name}"
  #   export GTK_APPLICATION_PREFER_DARK_THEME="${if vars.appearance.theme == "dark" then "1" else "0"}"
  # '';
}
