{ pkgs }:

{
  palette = {
    # Backgrounds

    base00 = "#050006"; # background
    base01 = "#0A0517"; # surface elevated
    base02 = "#130928"; # highlight selection
    base03 = "#261853"; # comments and borders

    # Foreground

    base04 = "#7A6AA8"; # subtle text
    base05 = "#B9A7E8"; # normal text
    base06 = "#D6AAEB"; # highlighted text
    base07 = "#F2D8FF"; # maximum contrast text

    # Semantic

    base08 = "#C678DD"; # purple blossom
    base09 = "#B38CFF"; # neon lavender
    base0A = "#D6AAEB"; # moonlight
    base0B = "#8C6CFF"; # spectral violet
    base0C = "#A78BFA"; # soft plasma
    base0D = "#7F5AF0"; # electric violet
    base0E = "#E879F9"; # eye glow
    base0F = "#4B2E83"; # deep amethyst
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
