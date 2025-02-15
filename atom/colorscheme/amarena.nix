{
  scheme = {
    colors = {
      primary = "#1A2026";
      bg = "#1A2026";
      fg = "#FFFFFF";
      black = "#242D35";
      red = "#FFB5C9"; # Pastel pink instead of vibrant red
      green = "#B8E6B9"; # Softer pastel green
      yellow = "#FFD1E3"; # Soft pastel pink-yellow
      blue = "#B7E4EF"; # Pastel blue
      magenta = "#E5B7E1"; # Pastel purple
      cyan = "#B7F0E4"; # Pastel cyan
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
          root = "#B8E6B9"; # Pastel green base
          shift = "#A6DCA7"; # Slightly deeper
          echo = "#B8E6B9"; # Base color
          fade = "#CAEFCB"; # Lighter variant
        };

        yellow = {
          root = "#FFD1E3"; # Pastel pink-yellow base
          shift = "#FFC1D8"; # Slightly deeper
          echo = "#FFD1E3"; # Base color
          fade = "#FFE1EE"; # Lighter variant
        };

        blue = {
          root = "#B7E4EF"; # Pastel blue base
          shift = "#A5DBE8"; # Slightly deeper
          echo = "#B7E4EF"; # Base color
          fade = "#C9EDF5"; # Lighter variant
        };

        magenta = {
          root = "#E5B7E1"; # Pastel purple base
          shift = "#DCA5D8"; # Slightly deeper
          echo = "#E5B7E1"; # Base color
          fade = "#EEC9EA"; # Lighter variant
        };

        cyan = {
          root = "#B7F0E4"; # Pastel cyan base
          shift = "#A5E8DA"; # Slightly deeper
          echo = "#B7F0E4"; # Base color
          fade = "#C9F8EE"; # Lighter variant
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
          root = "#FFB5C9"; # Pastel pink base for light theme
          shift = "#FFA3BC";
          echo = "#FFB5C9";
          fade = "#FFC7D6";
        };

        black = {
          root = "#242D35";
          shift = "#2A343E";
          echo = "#303B46";
          fade = "#526170";
        };

        green = {
          root = "#B8E6B9"; # Pastel green base for light theme
          shift = "#A6DCA7";
          echo = "#B8E6B9";
          fade = "#CAEFCB";
        };

        yellow = {
          root = "#FFD1E3"; # Pastel pink-yellow base for light theme
          shift = "#FFC1D8";
          echo = "#FFD1E3";
          fade = "#FFE1EE";
        };

        blue = {
          root = "#B7E4EF"; # Pastel blue base for light theme
          shift = "#A5DBE8";
          echo = "#B7E4EF";
          fade = "#C9EDF5";
        };

        magenta = {
          root = "#E5B7E1"; # Pastel purple base for light theme
          shift = "#DCA5D8";
          echo = "#E5B7E1";
          fade = "#EEC9EA";
        };

        cyan = {
          root = "#B7F0E4"; # Pastel cyan base for light theme
          shift = "#A5E8DA";
          echo = "#B7F0E4";
          fade = "#C9F8EE";
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
