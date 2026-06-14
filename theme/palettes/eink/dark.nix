{ pkgs }:

{
  palette = {
    base00 = "#121110";
    base01 = "#2D2A27";
    base02 = "#4E4A45";
    base03 = "#6E6A63";

    base04 = "#B0AAA1";
    base05 = "#DDD9D2";
    base06 = "#ECEAE5";
    base07 = "#F7F6F3";

    base08 = "#555555";
    base09 = "#666666";
    base0A = "#777777";
    base0B = "#606060";
    base0C = "#707070";
    base0D = "#4A4A4A";
    base0E = "#5C5C5C";
    base0F = "#3A3A3A";
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
