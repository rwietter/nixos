{ pkgs }:

{
  palette = {
    # backgrounds
    base00 = "#101010"; # Default background
    base01 = "#252525"; # Lighter background
    base02 = "#464646"; # Selection background
    base03 = "#525252"; # Comments and borders

    # foreground hierarchy
    base04 = "#ababab"; # Dark foreground
    base05 = "#b9b9b9"; # Default foreground
    base06 = "#e3e3e3"; # Light foreground
    base07 = "#f7f7f7"; # Lightest foreground

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
