{ vars, theme, pkgs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      name = vars.appearance.gtk.theme.name;
      package = pkgs."${vars.appearance.gtk.theme.package}";
    };
    iconTheme = {
      name = vars.appearance.gtk.iconTheme.name;
      package = pkgs."${vars.appearance.gtk.iconTheme.package}";
    };
    font = {
      name = vars.os.font.sans;
      size = 12;
    };
    cursorTheme = {
      name = vars.appearance.gtk.cursor.name;
      package = pkgs."${vars.appearance.gtk.cursor.package}";
      size = 24;
    };
  };

  home.pointerCursor = {
    name = vars.appearance.gtk.cursor.name;
    package = pkgs."${vars.appearance.gtk.cursor.package}";
    size = 24;
    gtk.enable = true;
  };
}