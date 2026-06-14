{ pkgs }:

{
  palette = {
    base00 = "#F7F6F3";
    base01 = "#ECEAE5";
    base02 = "#DDD9D2";
    base03 = "#B0AAA1";

    base04 = "#6E6A63";
    base05 = "#4E4A45";
    base06 = "#2D2A27";
    base07 = "#121110";

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
