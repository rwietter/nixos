{ pkgs }:

{
  palette = {
    # backgrounds
    base00 = "#fdf6e3"; # Default background
    base01 = "#f4f0d9"; # Lighter background
    base02 = "#e6e2cc"; # Selection background
    base03 = "#a6b0a0"; # Comments and borders

    # foreground hierarchy
    base04 = "#7a8478"; # Dark foreground
    base05 = "#5c6a72"; # Default foreground
    base06 = "#4f5b58"; # Strong foreground
    base07 = "#374145"; # Strongest foreground

    # semantic colors
    base08 = "#f85552"; # red
    base09 = "#e69875"; # orange
    base0A = "#dfa000"; # yellow
    base0B = "#8da101"; # green
    base0C = "#35a77c"; # cyan
    base0D = "#3a94c5"; # blue
    base0E = "#df69ba"; # magenta
    base0F = "#8b5d3b"; # brown
  };

  integrations = {
    gtk = {
      theme = {
        name = "Layan-Light";
        package = pkgs.layan-gtk-theme;
      };

      icon = {
        name = "BeautySolar";
        package = pkgs.qogir-icon-theme;
      };

      cursor = {
        name = "Quintom_Snow";
        package = pkgs.quintom-cursor-theme;
      };
    };
  };
}
