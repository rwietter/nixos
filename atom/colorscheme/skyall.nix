{
  scheme = {
    colors = {
      primary = "#282F37";
      bg = "#282F37";
      fg = "#F1FCF9";
      black = "#20262C";
      red = "#DB86BA";
      green = "#74DD91";
      yellow = "#E49186";
      blue = "#75DBE1";
      magenta = "#B4A1DB";
      cyan = "#9EE9EA";
      white = "#F1FCF9";
    };
    variants = {
      dark = {
        bg = {
          root = "#282F37";
          shift = "#20262C";
          echo = "#333B44";
          fade = "#465463";
        };

        fg = {
          root = "#F1FCF9";
          shift = "#E0E5E5";
          echo = "#D0D5D5";
          fade = "#C0C5C5";
        };

        red = {
          root = "#DB86BA";
          shift = "#D04E9D";
          echo = "#D86AAD";
          fade = "#DB86BA";
        };

        black = {
          root = "#20262C";
          shift = "#2E353C";
          echo = "#3C444C";
          fade = "#465463";
        };

        green = {
          root = "#74DD91";
          shift = "#4BC66D";
          echo = "#60D17F";
          fade = "#74DD91";
        };

        yellow = {
          root = "#E49186";
          shift = "#DB695B";
          echo = "#E47D71";
          fade = "#E49186";
        };

        blue = {
          root = "#75DBE1";
          shift = "#3DBAC2";
          echo = "#59CAD1";
          fade = "#75DBE1";
        };

        magenta = {
          root = "#B4A1DB";
          shift = "#825ECE";
          echo = "#9B80D4";
          fade = "#B4A1DB";
        };

        cyan = {
          root = "#9EE9EA";
          shift = "#62CDCD";
          echo = "#80DBDC";
          fade = "#9EE9EA";
        };

        white = {
          root = "#F1FCF9";
          shift = "#E0E5E5";
          echo = "#D0D5D5";
          fade = "#C0C5C5";
        };
      };

      light = {
        bg = {
          root = "#F1FCF9";
          shift = "#E0E5E5";
          echo = "#D0D5D5";
          fade = "#C0C5C5";
        };

        fg = {
          root = "#282F37";
          shift = "#20262C";
          echo = "#333B44";
          fade = "#465463";
        };

        red = {
          root = "#D04E9D";
          shift = "#D86AAD";
          echo = "#DB86BA";
          fade = "#E0A2C8";
        };

        black = {
          root = "#20262C";
          shift = "#2E353C";
          echo = "#3C444C";
          fade = "#465463";
        };

        green = {
          root = "#4BC66D";
          shift = "#60D17F";
          echo = "#74DD91";
          fade = "#89E9A3";
        };

        yellow = {
          root = "#DB695B";
          shift = "#E47D71";
          echo = "#E49186";
          fade = "#EAA59C";
        };

        blue = {
          root = "#3DBAC2";
          shift = "#59CAD1";
          echo = "#75DBE1";
          fade = "#91ECF0";
        };

        magenta = {
          root = "#825ECE";
          shift = "#9B80D4";
          echo = "#B4A1DB";
          fade = "#CDC2E2";
        };

        cyan = {
          root = "#62CDCD";
          shift = "#80DBDC";
          echo = "#9EE9EA";
          fade = "#BCF7F7";
        };

        white = {
          root = "#E0E5E5";
          shift = "#D0D5D5";
          echo = "#C0C5C5";
          fade = "#B0B5B5";
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
