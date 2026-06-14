{ pkgs }:

{
  palette = {
    base00 = "#1e1e2e"; # Base
    base01 = "#313244"; # Surface
    base02 = "#45475a"; # Highlight
    base03 = "#6c7086"; # Comments

    base04 = "#a6adc8"; # Subtext
    base05 = "#cdd6f4"; # Normal text
    base06 = "#f5e0dc"; # Emphasized text
    base07 = "#b4befe"; # Maximum text contrast

    base08 = "#f38ba8"; # variables
    base09 = "#fab387"; # constants
    base0A = "#f9e2af"; # primary accent
    base0B = "#a6e3a1"; # active / strings
    base0C = "#94e2d5"; # support
    base0D = "#89b4fa"; # functions / info
    base0E = "#cba6f7"; # keywords
    base0F = "#eba0ac"; # deprecated/deep accent
  };

  integrations = {
    gtk = {
      theme = {
        name = "Whitesur-Dark";
        package = pkgs.whitesur-gtk-theme;
      };

      icon = {
        name = "Whitesur-Dark";
        package = pkgs.whitesur-icon-theme;
      };

      cursor = {
        name = "Whitesur-Dark";
        package = pkgs.whitesur-cursors;
      };
    };
  };
}
