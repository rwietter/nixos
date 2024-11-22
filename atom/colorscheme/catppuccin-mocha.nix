let
  bg_catppuccin = {
    bg.root = "#1e1e2e"; # Base
    bg.shift = "#181825"; # Mantle
    bg.echo = "#11111b"; # Crust
    bg.fade = "#313244"; # Surface0
  };
in
{
  scheme = {
    colors = {
      primary = "#cba6f7"; # Mauve
      bg = "#1e1e2e"; # Base
      fg = "#cdd6f4"; # Text
      black = "#181825"; # Mantle
      red = "#f38ba8"; # Red
      green = "#a6e3a1"; # Green
      yellow = "#f9e2af"; # Yellow
      blue = "#89b4fa"; # Blue
      magenta = "#f5c2e7"; # Pink
      cyan = "#94e2d5"; # Teal
      white = "#cdd6f4"; # Text
    };
    variants = {
      dark = bg_catppuccin // {
        fg.root = "#cdd6f4"; # Text
        fg.shift = "#bac2de"; # Subtext1
        fg.echo = "#a6adc8"; # Subtext0
        fg.fade = "#9399b2"; # Overlay2

        red.root = "#f38ba8"; # Red
        red.shift = "#eba0ac"; # Maroon
        red.echo = "#fab387"; # Peach
        red.fade = "#f9e2af"; # Yellow

        green.root = "#a6e3a1"; # Green
        green.shift = "#94e2d5"; # Teal
        green.echo = "#89dceb"; # Sky
        green.fade = "#74c7ec"; # Sapphire

        blue.root = "#89b4fa"; # Blue
        blue.shift = "#b4befe"; # Lavender
        blue.echo = "#cba6f7"; # Mauve
        blue.fade = "#f5c2e7"; # Pink

        magenta.root = "#f5c2e7"; # Pink
        magenta.shift = "#cba6f7"; # Mauve
        magenta.echo = "#f2cdcd"; # Flamingo
        magenta.fade = "#f5e0dc"; # Rosewater

        cyan.root = "#94e2d5"; # Teal
        cyan.shift = "#89dceb"; # Sky
        cyan.echo = "#74c7ec"; # Sapphire
        cyan.fade = "#89b4fa"; # Blue

        white.root = "#cdd6f4"; # Text
        white.shift = "#bac2de"; # Subtext1
        white.echo = "#a6adc8"; # Subtext0
        white.fade = "#9399b2"; # Overlay2
      };

      light = bg_catppuccin // {
        fg.root = "#585b70"; # Surface2
        fg.shift = "#6c7086"; # Overlay0
        fg.echo = "#7f849c"; # Overlay1
        fg.fade = "#9399b2"; # Overlay2

        black.root = "#11111b"; # Crust
        black.shift = "#181825"; # Mantle
        black.echo = "#1e1e2e"; # Base
        black.fade = "#313244"; # Surface0

        red.root = "#f38ba8"; # Red
        red.shift = "#eba0ac"; # Maroon
        red.echo = "#fab387"; # Peach
        red.fade = "#f9e2af"; # Yellow

        green.root = "#a6e3a1"; # Green
        green.shift = "#94e2d5"; # Teal
        green.echo = "#89dceb"; # Sky
        green.fade = "#74c7ec"; # Sapphire

        yellow.root = "#f9e2af"; # Yellow
        yellow.shift = "#fab387"; # Peach
        yellow.echo = "#f38ba8"; # Red
        yellow.fade = "#eba0ac"; # Maroon

        blue.root = "#89b4fa"; # Blue
        blue.shift = "#b4befe"; # Lavender
        blue.echo = "#cba6f7"; # Mauve
        blue.fade = "#f5c2e7"; # Pink

        magenta.root = "#f5c2e7"; # Pink
        magenta.shift = "#cba6f7"; # Mauve
        magenta.echo = "#f2cdcd"; # Flamingo
        magenta.fade = "#f5e0dc"; # Rosewater

        cyan.root = "#94e2d5"; # Teal
        cyan.shift = "#89dceb"; # Sky
        cyan.echo = "#74c7ec"; # Sapphire
        cyan.fade = "#89b4fa"; # Blue

        white.root = "#cdd6f4"; # Text
        white.shift = "#bac2de"; # Subtext1
        white.echo = "#a6adc8"; # Subtext0
        white.fade = "#9399b2"; # Overlay2
      };
    };
  };
  gtk = {
    dark = {
      theme = {
        name = "Layan-Dark";
        package = "layan-gtk-theme";
      };
      iconTheme = {
        name = "BeautySolar"; # Qogir-dark
        package = "qogir-icon-theme"; # qogir-icon-theme
      };
      cursor = {
        name = "Quintom_Snow";
        package = "quintom-cursor-theme";
      };
    };
    light = {
      theme = {
        name = "Layan-Light";
        package = "layan-gtk-theme";
      };
      iconTheme = {
        name = "BeautySolar"; # Qogir-light
        package = "qogir-icon-theme"; # qogir-icon-theme
      };
      cursor = {
        name = "Quintom_Snow";
        package = "quintom-cursor-theme";
      };
    };
  };
}
