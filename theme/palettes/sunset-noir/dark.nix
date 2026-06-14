

{ pkgs }:

{
  palette = {
    # backgrounds

    base00 = "#020000"; # night horizon
    base01 = "#0D0002"; # coffee bean
    base02 = "#1C0305"; # deep shadow
    base03 = "#3D0C0E"; # rich mahogany

    # foregrounds

    base04 = "#D06D79"; # blush rose
    base05 = "#F4A0A0"; # soft sunset
    base06 = "#FFC0B7"; # warm glow
    base07 = "#FFE0D6"; # sky highlight

    # accents

    base08 = "#D33D35"; # ember red
    base09 = "#FD7554"; # vibrant coral
    base0A = "#F98686"; # grapefruit pink
    base0B = "#D06D79"; # blush rose
    base0C = "#E18AA0"; # mauve haze
    base0D = "#FF8C6B"; # sunset salmon
    base0E = "#FF6FA1"; # neon bloom
    base0F = "#661B1A"; # black cherry
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
