{ pkgs }:

{
  palette = {
    base00 = "#11111b"; # Default Background
    base01 = "#1e1e2e"; # Surface / Lighter Background (status bars)
    base02 = "#313244"; # Highlight / Selection Background
    base03 = "#45475a"; # Comments, Invisibles

    base04 = "#a6adc8"; # Subtext / Dark Foreground
    base05 = "#cdd6f4"; # Normal text / Default Foreground
    base06 = "#e0e5f5"; # Emphasized text / Light Foreground
    base07 = "#eff1f5"; # Light Background

    base08 = "#f38ba8"; # variables, tags, deleted, errors
    base09 = "#fab387"; # constants, integer, constants
    base0A = "#f9e2af"; # primary accent / classes, attributes, search
    base0B = "#a6e3a1"; # strings
    base0C = "#94e2d5"; # support / regex / escape / objects
    base0D = "#89b4fa"; # functions
    base0E = "#cba6f7"; # keywords
    base0F = "#eba0ac"; # deprecated/deep accent
  };

  integrations = {
    gtk = {
      theme = {
        name = "Dracula";
        package = pkgs.dracula-theme;
      };

      icon = {
        name = "Papirus-Dark";
        package = pkgs.catppuccin-papirus-folders;
      };

      cursor = {
        name = "Dracula-cursors";
        package = pkgs.catppuccin-cursors;
      };
    };
  };
}
