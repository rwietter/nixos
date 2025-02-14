{
  scheme = {
    colors = {
      primary = "#1D1F28";
      bg = "#1D1F28";
      fg = "#FDFDFD";
      black = "#282A36";
      red = "#F37F97";
      green = "#5ADECD";
      yellow = "#F2A272";
      blue = "#8897F4";
      magenta = "#C574DD";
      cyan = "#79E6F3";
      white = "#FDFDFD";
    };
    variants = {
      dark = {
        bg = {
          root = "#1D1F28";
          shift = "#282A36";
          echo = "#343747";
          fade = "#414458";
        };

        fg = {
          root = "#FDFDFD";
          shift = "#EAEAEA";
          echo = "#D6D6D6";
          fade = "#BEBEC1";
        };

        red = {
          root = "#F37F97";
          shift = "#FF4971";
          echo = "#FF6484";
          fade = "#FF7F97";
        };

        black = {
          root = "#282A36";
          shift = "#343747";
          echo = "#414458";
          fade = "#4E5269";
        };

        green = {
          root = "#5ADECD";
          shift = "#18E3C8";
          echo = "#36E6CD";
          fade = "#54E9D2";
        };

        yellow = {
          root = "#F2A272";
          shift = "#FF8037";
          echo = "#FF9254";
          fade = "#FFA472";
        };

        blue = {
          root = "#8897F4";
          shift = "#556FFF";
          echo = "#6D83FF";
          fade = "#8597FF";
        };

        magenta = {
          root = "#C574DD";
          shift = "#B043D1";
          echo = "#B758D7";
          fade = "#BE6EDD";
        };

        cyan = {
          root = "#79E6F3";
          shift = "#3FDCEE";
          echo = "#5CE1F0";
          fade = "#79E6F3";
        };

        white = {
          root = "#FDFDFD";
          shift = "#EAEAEA";
          echo = "#D6D6D6";
          fade = "#BEBEC1";
        };
      };

      light = {
        bg = {
          root = "#FDFDFD";
          shift = "#EAEAEA";
          echo = "#D6D6D6";
          fade = "#BEBEC1";
        };

        fg = {
          root = "#1D1F28";
          shift = "#282A36";
          echo = "#343747";
          fade = "#414458";
        };

        red = {
          root = "#FF4971";
          shift = "#FF6484";
          echo = "#FF7F97";
          fade = "#FF99AA";
        };

        black = {
          root = "#282A36";
          shift = "#343747";
          echo = "#414458";
          fade = "#4E5269";
        };

        green = {
          root = "#18E3C8";
          shift = "#36E6CD";
          echo = "#54E9D2";
          fade = "#72ECD7";
        };

        yellow = {
          root = "#FF8037";
          shift = "#FF9254";
          echo = "#FFA472";
          fade = "#FFB68F";
        };

        blue = {
          root = "#556FFF";
          shift = "#6D83FF";
          echo = "#8597FF";
          fade = "#9DABFF";
        };

        magenta = {
          root = "#B043D1";
          shift = "#B758D7";
          echo = "#BE6EDD";
          fade = "#C584E3";
        };

        cyan = {
          root = "#3FDCEE";
          shift = "#5CE1F0";
          echo = "#79E6F3";
          fade = "#96EBF5";
        };

        white = {
          root = "#BEBEC1";
          shift = "#ABABAE";
          echo = "#98989B";
          fade = "#858588";
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
