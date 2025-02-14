{
  scheme = {
    colors = {
      primary = "#323F4E";
      bg = "#323F4E";
      fg = "#F8F8F2";
      black = "#3D4C5F";
      red = "#F48FB1";
      green = "#A1EFD3";
      yellow = "#F1FA8C";
      blue = "#92B6F4";
      magenta = "#BD99FF";
      cyan = "#87DFEB";
      white = "#F8F8F2";
    };
    variants = {
      dark = {
        bg = {
          root = "#323F4E";
          shift = "#3D4C5F";
          echo = "#485B71";
          fade = "#56687E";
        };

        fg = {
          root = "#F8F8F2";
          shift = "#E5E5E5";
          echo = "#D2D2D2";
          fade = "#BFBFBF";
        };

        red = {
          root = "#F48FB1";
          shift = "#EE4F84";
          echo = "#F16E98";
          fade = "#F48FB1";
        };

        black = {
          root = "#3D4C5F";
          shift = "#485B71";
          echo = "#56687E";
          fade = "#647891";
        };

        green = {
          root = "#A1EFD3";
          shift = "#53E2AE";
          echo = "#7AE8C0";
          fade = "#A1EFD3";
        };

        yellow = {
          root = "#F1FA8C";
          shift = "#F1FF52";
          echo = "#F1FA8C";
          fade = "#F2FBA6";
        };

        blue = {
          root = "#92B6F4";
          shift = "#6498EF";
          echo = "#7BA7F1";
          fade = "#92B6F4";
        };

        magenta = {
          root = "#BD99FF";
          shift = "#985EFF";
          echo = "#AB7CFF";
          fade = "#BD99FF";
        };

        cyan = {
          root = "#87DFEB";
          shift = "#24D1E7";
          echo = "#55D8E9";
          fade = "#87DFEB";
        };

        white = {
          root = "#F8F8F2";
          shift = "#E5E5E5";
          echo = "#D2D2D2";
          fade = "#BFBFBF";
        };
      };

      light = {
        bg = {
          root = "#F8F8F2";
          shift = "#E5E5E5";
          echo = "#D2D2D2";
          fade = "#BFBFBF";
        };

        fg = {
          root = "#323F4E";
          shift = "#3D4C5F";
          echo = "#485B71";
          fade = "#56687E";
        };

        red = {
          root = "#EE4F84";
          shift = "#F16E98";
          echo = "#F48FB1";
          fade = "#F7B0C9";
        };

        black = {
          root = "#3D4C5F";
          shift = "#485B71";
          echo = "#56687E";
          fade = "#647891";
        };

        green = {
          root = "#53E2AE";
          shift = "#7AE8C0";
          echo = "#A1EFD3";
          fade = "#C8F5E6";
        };

        yellow = {
          root = "#F1FF52";
          shift = "#F1FA8C";
          echo = "#F2FBA6";
          fade = "#F3FCC0";
        };

        blue = {
          root = "#6498EF";
          shift = "#7BA7F1";
          echo = "#92B6F4";
          fade = "#A9C5F6";
        };

        magenta = {
          root = "#985EFF";
          shift = "#AB7CFF";
          echo = "#BD99FF";
          fade = "#D0B7FF";
        };

        cyan = {
          root = "#24D1E7";
          shift = "#55D8E9";
          echo = "#87DFEB";
          fade = "#B8E7F0";
        };

        white = {
          root = "#E5E5E5";
          shift = "#D2D2D2";
          echo = "#BFBFBF";
          fade = "#ACACAC";
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
