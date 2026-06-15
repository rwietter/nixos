{
  newTheme,
  lib,
  vars,
  config,
  ...
}:

let
  gtkTheme = newTheme.integrations.gtk.theme;
  iconTheme = newTheme.integrations.gtk.icon;
  cursorTheme = newTheme.integrations.gtk.cursor;

  cursorSize = 24;
  fontSize = 12;

  preferDark = vars.appearance.mode == "dark";
in
{
  options = {
    rw.gtk.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable GTK integration.";
    };
  };

  config = lib.mkIf config.rw.gtk.enable {
    gtk = {
      enable = true;

      theme = {
        name = gtkTheme.name;
        package = gtkTheme.package;
      };

      iconTheme = {
        name = iconTheme.name;
        package = iconTheme.package;
      };

      cursorTheme = {
        name = cursorTheme.name;
        package = cursorTheme.package;
        size = cursorSize;
      };

      font = {
        name = vars.os.font.sans;
        size = fontSize;
      };

      gtk3.extraConfig = {
        gtk-application-prefer-dark-theme = preferDark;

        gtk-toolbar-style = "GTK_TOOLBAR_BOTH_HORIZ";
        gtk-toolbar-icon-size = "GTK_ICON_SIZE_LARGE_TOOLBAR";

        gtk-button-images = 1;
        gtk-menu-images = 1;
        gtk-enable-event-sounds = 1;

        gtk-xft-antialias = 1;
        gtk-xft-hinting = 1;
        gtk-xft-hintstyle = "hintfull";
        gtk-xft-rgba = "rgb";
        gtk-xft-dpi = 71680;
      };

      gtk4.extraConfig = {
        gtk-application-prefer-dark-theme = preferDark;
      };
    };

    xresources.properties = {
      "Xcursor.size" = cursorSize;
      "Xft.dpi" = 70;
      "Xft.autohint" = 0;
      "Xft.lcdfilter" = "lcddefault";
      "Xft.hintstyle" = "hintfull";
      "Xft.hinting" = 1;
      "Xft.antialias" = 1;
      "Xft.rgba" = "rgb";
    };

    home.pointerCursor = {
      name = cursorTheme.name;
      package = cursorTheme.package;
      size = cursorSize;

      gtk.enable = true;
      x11.enable = true;
    };

    dconf.enable = true;

    dconf.settings = {
      "org/gnome/desktop/interface" = {
        gtk-theme = gtkTheme.name;
        icon-theme = iconTheme.name;
        cursor-theme = cursorTheme.name;

        font-name = "${vars.os.font.sans} ${toString fontSize}";
        monospace-font-name = "${vars.os.font.mono} ${toString fontSize}";

        color-scheme =
          if preferDark
          then "prefer-dark"
          else "default";
      };

      "org/gnome/desktop/wm/preferences" = {
        theme = gtkTheme.name;
      };
    };

    home.sessionVariables = {
      XCURSOR_THEME = cursorTheme.name;
      XCURSOR_SIZE = toString cursorSize;
    };
  };
}
