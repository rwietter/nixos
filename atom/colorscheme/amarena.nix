{
  scheme = {
    colors = {
      primary = "#1A2026";
      bg = "#1A2026";
      fg = "#FFFFFF";
      black = "#242D35";
      red = "#FB6396";
      green = "#94CF95";
      yellow = "#F692B2";
      blue = "#6EC1D6";
      magenta = "#CD84C8";
      cyan = "#7FE4D2";
      white = "#FFFFFF";
    };
    variants = {
      dark = {
        bg = {
          root = "#1A2026";
          shift = "#1F262D";
          echo = "#242D35";
          fade = "#526170";
        };

        fg = {
          root = "#FFFFFF";
          shift = "#F4F5F2";
          echo = "#E8E9E6";
          fade = "#DCDDD9";
        };

        red = {
          root = "#FB6396";
          shift = "#F92D72";
          echo = "#FA477F";
          fade = "#FB618C";
        };

        black = {
          root = "#242D35";
          shift = "#2A343E";
          echo = "#303B46";
          fade = "#526170";
        };

        green = {
          root = "#94CF95";
          shift = "#6CCB6E";
          echo = "#7DD17F";
          fade = "#8ED790";
        };

        yellow = {
          root = "#F692B2";
          shift = "#F26190";
          echo = "#F477A1";
          fade = "#F58DB2";
        };

        blue = {
          root = "#6EC1D6";
          shift = "#4CB9D6";
          echo = "#5ABFDA";
          fade = "#68C5DE";
        };

        magenta = {
          root = "#CD84C8";
          shift = "#C269BC";
          echo = "#C576C0";
          fade = "#C983C4";
        };

        cyan = {
          root = "#7FE4D2";
          shift = "#58D6BF";
          echo = "#69DAC5";
          fade = "#7ADECC";
        };

        white = {
          root = "#FFFFFF";
          shift = "#F4F5F2";
          echo = "#E8E9E6";
          fade = "#DCDDD9";
        };
      };

      light = {
        bg = {
          root = "#F4F5F2";
          shift = "#E8E9E6";
          echo = "#DCDDD9";
          fade = "#D0D1CD";
        };

        fg = {
          root = "#1A2026";
          shift = "#242D35";
          echo = "#2E3841";
          fade = "#38434D";
        };

        red = {
          root = "#F92D72";
          shift = "#FA477F";
          echo = "#FB618C";
          fade = "#FC7B99";
        };

        black = {
          root = "#242D35";
          shift = "#2A343E";
          echo = "#303B46";
          fade = "#526170";
        };

        green = {
          root = "#6CCB6E";
          shift = "#7DD17F";
          echo = "#8ED790";
          fade = "#9FDCA1";
        };

        yellow = {
          root = "#F26190";
          shift = "#F477A1";
          echo = "#F58DB2";
          fade = "#F6A3C3";
        };

        blue = {
          root = "#4CB9D6";
          shift = "#5ABFDA";
          echo = "#68C5DE";
          fade = "#76CBE2";
        };

        magenta = {
          root = "#C269BC";
          shift = "#C576C0";
          echo = "#C983C4";
          fade = "#CD90C8";
        };

        cyan = {
          root = "#58D6BF";
          shift = "#69DAC5";
          echo = "#7ADECC";
          fade = "#8BE2D2";
        };

        white = {
          root = "#DCDDD9";
          shift = "#D0D1CD";
          echo = "#C4C5C1";
          fade = "#B8B9B5";
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
