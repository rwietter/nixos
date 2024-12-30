{
  scheme = {
    colors = {
      primary = "#D699B6"; # Purple for primary accent
      bg = "#2D353B"; # Base background
      fg = "#D3C6AA"; # Base foreground
      black = "#7A8478"; # Grey0 for muted elements
      red = "#E67E80"; # Red accent
      green = "#A7C080"; # Green accent
      yellow = "#DBBC7F"; # Yellow accent
      blue = "#7FBBB3"; # Blue accent
      magenta = "#D699B6"; # Purple accent
      cyan = "#83C092"; # Aqua accent
      white = "#D3C6AA"; # Base foreground for light text
    };
    variants = {
      dark = {
        bg = {
          root = "#2D353B";
          shift = "#30383E";
          echo = "#333B41";
          fade = "#363F45";
        };

        fg = {
          root = "#D3C6AA";
          shift = "#D9CCAF";
          echo = "#DED1B5";
          fade = "#E4D7BA";
        };

        red = {
          root = "#E19D9F";
          shift = "#E6A2A4";
          echo = "#EBA8AA";
          fade = "#F0ADAF";
        };

        black = {
          root = "#7A8478";
          shift = "#7F897D";
          echo = "#848E82";
          fade = "#8A9488";
        };

        green = {
          root = "#C8D4B5";
          shift = "#CDDABA";
          echo = "#D3DFC0";
          fade = "#D8E5C5";
        };

        yellow = {
          root = "#DDCBA6";
          shift = "#E3D1AB";
          echo = "#E8D6B1";
          fade = "#EEDCB6";
        };

        blue = {
          root = "#B8D6D2";
          shift = "#BDDBD7";
          echo = "#C2E0DC";
          fade = "#C7E5E1";
        };

        magenta = {
          root = "#DBBDCB";
          shift = "#E1C2D0";
          echo = "#E6C8D6";
          fade = "#ECCDDB";
        };

        cyan = {
          root = "#C6D09F";
          shift = "#CCD8A5";
          echo = "#D1E0AB";
          fade = "#D7E8B2";
        };

        white = {
          root = "#D3C6AA";
          shift = "#D9CCAF";
          echo = "#DED1B5";
          fade = "#E4D7BA";
        };
      };

      light = {
        bg = {
          root = "#FDF6E3";
          shift = "#F4F0D9";
          echo = "#EFEBD4";
          fade = "#E6E2CC";
        };

        fg = {
          root = "#5C6A72";
          shift = "#616F77";
          echo = "#66747C";
          fade = "#6C7981";
        };

        black = {
          root = "#5C6A72";
          shift = "#657178";
          echo = "#6E787F";
          fade = "#777F85";
        };

        red = {
          root = "#F85552";
          shift = "#F85D5A";
          echo = "#F96562";
          fade = "#F96D6A";
        };

        green = {
          root = "#8DA101";
          shift = "#93A60A";
          echo = "#99AB14";
          fade = "#9FB01D";
        };

        yellow = {
          root = "#DFA000";
          shift = "#E1A40D";
          echo = "#E3A81A";
          fade = "#E5AC26";
        };

        blue = {
          root = "#3A94C5";
          shift = "#4399C8";
          echo = "#4C9ECB";
          fade = "#55A3CE";
        };

        magenta = {
          root = "#DF69BA";
          shift = "#E070BD";
          echo = "#E177C0";
          fade = "#E27EC3";
        };

        cyan = {
          root = "#83C092";
          shift = "#88C397";
          echo = "#8DC69C";
          fade = "#92C9A1";
        };

        white = {
          root = "#FDF6E3";
          shift = "#F4F0D9";
          echo = "#EFEBD4";
          fade = "#E6E2CC";
        };
      };
    };
  };

  # GTK theme and icon configurations
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
