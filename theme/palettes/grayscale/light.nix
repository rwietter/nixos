{ pkgs }:

{
  palette = {
    # backgrounds
    base00 = "#f7f7f7"; # Default background
    base01 = "#e3e3e3"; # Lighter background
    base02 = "#b9b9b9"; # Selection background
    base03 = "#ababab"; # Comments and borders

    # foreground hierarchy
    base04 = "#525252"; # Dark foreground
    base05 = "#464646"; # Default foreground
    base06 = "#252525"; # Strong foreground
    base07 = "#101010"; # Strongest foreground

    # semantic colors
    base08 = "#7c7c7c"; # red
    base09 = "#999999"; # orange
    base0A = "#a0a0a0"; # yellow
    base0B = "#8e8e8e"; # green
    base0C = "#868686"; # cyan
    base0D = "#686868"; # blue
    base0E = "#747474"; # magenta
    base0F = "#5e5e5e"; # brown
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
