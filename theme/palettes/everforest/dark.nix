{ pkgs }:

# base00 → background principal
# base01 → background elevado/painéis
# base02 → seleção/highlight fraco
# base03 → comentários/bordas

# base04 → foreground discreto
# base05 → foreground principal
# base06 → foreground forte
# base07 → foreground máximo

# base08 → red
# base09 → orange
# base0A → yellow
# base0B → green
# base0C → cyan
# base0D → blue
# base0E → magenta
# base0F → brown

{
  palette = {
    # backgrounds
    base00 = "#1c1e1f"; # Default background
    base01 = "#2e383c"; # Lighter background
    base02 = "#414b50"; # Selection background
    base03 = "#859289"; # Comments and borders

    # foreground hierarchy
    base04 = "#a8b3ab"; # Dark foreground
    base05 = "#ddd3bc"; # Default foreground
    base06 = "#ebe5d2"; # Light foreground
    base07 = "#f7f1df"; # Lightest foreground

    # colors
    base08 = "#f09a9d"; # pastel red
    base09 = "#efb08f"; # pastel orange
    base0A = "#e6cd93"; # pastel yellow
    base0B = "#b8d39a"; # pastel green
    base0C = "#9fd0ad"; # pastel cyan
    base0D = "#9ac8c2"; # pastel blue
    base0E = "#e2afc7"; # pastel magenta
    base0F = "#7b5a67"; # muted brown
  };

  integrations = {
    gtk = {
      theme = {
        name = "Layan-Dark";
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
