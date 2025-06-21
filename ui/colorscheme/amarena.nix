{
  scheme = {
    colors = {
      primary = "#141D26"; # `#0F1319`, `#1A2026`, `#141D26`
      bg = "#1A2026";
      fg = "#FFFFFF";
      black = "#242D35";
      red = "#FFB5C9"; # Pastel pink instead of vibrant red
      green = "#C1EED6"; # Verde Primavera - softer pastel green
      yellow = "#FFD1E3"; # Soft pastel pink-yellow
      blue = "#BCE8F7"; # Azul Céu de Primavera - pastel blue
      magenta = "#E5B7E1"; # Pastel purple
      cyan = "#BBF0EC"; # Cyan Aurora - pastel cyan
      white = "#FFFFFF";
    };
    variants = {
      dark = {
        bg = {
          # Darker background
          root = "#1A2026";
          shift = "#1F262D";
          echo = "#242D35";
          fade = "#526170";
          # Blueish background
          # root = "#141D26";
          # shift = "#1A2026";
          # echo = "#141D26";
          # fade = "#1A2026";
        };

        fg = {
          root = "#FFFFFF";
          shift = "#F4F5F2";
          echo = "#E8E9E6";
          fade = "#DCDDD9";
        };

        red = {
          root = "#FFB5C9"; # Pastel pink base
          shift = "#FFA3BC"; # Slightly deeper
          echo = "#FFB5C9"; # Base color
          fade = "#FFC7D6"; # Lighter variant
        };

        black = {
          root = "#242D35";
          shift = "#2A343E";
          echo = "#303B46";
          fade = "#526170";
        };

        green = {
          root = "#C1EED6"; # Verde Primavera base
          shift = "#AEE5CA"; # Slightly deeper
          echo = "#C1EED6"; # Base color
          fade = "#D4F7E2"; # Lighter variant
        };

        yellow = {
          root = "#FFD1E3"; # Pastel pink-yellow base
          shift = "#FFC1D8"; # Slightly deeper
          echo = "#FFD1E3"; # Base color
          fade = "#FFE1EE"; # Lighter variant
        };

        blue = {
          root = "#BCE8F7"; # Azul Céu de Primavera base
          shift = "#A9DCEF"; # Slightly deeper
          echo = "#BCE8F7"; # Base color
          fade = "#CFF2FD"; # Lighter variant
        };

        magenta = {
          root = "#E5B7E1"; # Pastel purple base
          shift = "#DCA5D8"; # Slightly deeper
          echo = "#E5B7E1"; # Base color
          fade = "#EEC9EA"; # Lighter variant
        };

        cyan = {
          root = "#BBF0EC"; # Cyan Aurora base
          shift = "#A8E7E3"; # Slightly deeper
          echo = "#BBF0EC"; # Base color
          fade = "#CEF9F5"; # Lighter variant
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
          root = "#F591AA"; # Enhanced contrast pastel pink
          shift = "#F27F9B";
          echo = "#F591AA";
          fade = "#F8A3B8";
        };

        black = {
          root = "#242D35";
          shift = "#2A343E";
          echo = "#303B46";
          fade = "#526170";
        };

        green = {
          root = "#8ED3B7"; # Enhanced contrast pastel green
          shift = "#7BC5A7";
          echo = "#8ED3B7";
          fade = "#A1DCC3";
        };

        yellow = {
          root = "#F5A3BC"; # Enhanced contrast pastel pink-yellow
          shift = "#F291AD";
          echo = "#F5A3BC";
          fade = "#F8B5CB";
        };

        blue = {
          root = "#7FCAE2"; # Enhanced contrast pastel blue
          shift = "#6CBED8";
          echo = "#7FCAE2";
          fade = "#92D6EC";
        };

        magenta = {
          root = "#D191CC"; # Enhanced contrast pastel purple
          shift = "#C77FC0";
          echo = "#D191CC";
          fade = "#DBA3D8";
        };

        cyan = {
          root = "#7CD9D4"; # Enhanced contrast pastel cyan
          shift = "#69CBC5";
          echo = "#7CD9D4";
          fade = "#8FE7E3";
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
        name = "BeautySolar";
        package = "qogir-icon-theme";
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
        name = "BeautySolar";
        package = "qogir-icon-theme";
      };
      cursor = {
        name = "Quintom_Snow";
        package = "quintom-cursor-theme";
      };
    };
  };
}
