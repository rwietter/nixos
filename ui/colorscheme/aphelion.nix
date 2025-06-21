{
  scheme = {
    colors = {
      primary = "#101319";
      bg = "#101319";
      fg = "#f4f3ee";
      black = "#171b24";
      red = "#E34F4F";
      green = "#69bfce";
      yellow = "#e37e4f";
      blue = "#5679E3";
      magenta = "#956dca";
      cyan = "#5599E2";
      white = "#f4f3ee";
    };
    variants = {
      dark = {
        bg = {
          root = "#101319";
          shift = "#171b24";
          echo = "#2A3341";
          fade = "#3A435A";
        };

        fg = {
          root = "#f4f3ee";
          shift = "#DDDBCF";
          echo = "#C6C4BA";
          fade = "#AFADA5";
        };

        red = {
          root = "#E34F4F";
          shift = "#DE2B2B";
          echo = "#E13D3D";
          fade = "#E34F4F";
        };

        black = {
          root = "#171b24";
          shift = "#2A3341";
          echo = "#3A435A";
          fade = "#4A5373";
        };

        green = {
          root = "#69bfce";
          shift = "#56B7C8";
          echo = "#60BBCB";
          fade = "#69bfce";
        };

        yellow = {
          root = "#e37e4f";
          shift = "#DE642B";
          echo = "#E1713D";
          fade = "#e37e4f";
        };

        blue = {
          root = "#5679E3";
          shift = "#3E66E0";
          echo = "#4A70E1";
          fade = "#5679E3";
        };

        magenta = {
          root = "#956dca";
          shift = "#885AC4";
          echo = "#8F64C7";
          fade = "#956dca";
        };

        cyan = {
          root = "#5599E2";
          shift = "#3F8CDE";
          echo = "#4A93E0";
          fade = "#5599E2";
        };

        white = {
          root = "#f4f3ee";
          shift = "#DDDBCF";
          echo = "#C6C4BA";
          fade = "#AFADA5";
        };
      };

      light = {
        bg = {
          root = "#f4f3ee";
          shift = "#DDDBCF";
          echo = "#C6C4BA";
          fade = "#AFADA5";
        };

        fg = {
          root = "#101319";
          shift = "#171b24";
          echo = "#2A3341";
          fade = "#3A435A";
        };

        red = {
          root = "#DE2B2B";
          shift = "#E13D3D";
          echo = "#E34F4F";
          fade = "#E66161";
        };

        black = {
          root = "#171b24";
          shift = "#2A3341";
          echo = "#3A435A";
          fade = "#4A5373";
        };

        green = {
          root = "#56B7C8";
          shift = "#60BBCB";
          echo = "#69bfce";
          fade = "#72C3D1";
        };

        yellow = {
          root = "#DE642B";
          shift = "#E1713D";
          echo = "#e37e4f";
          fade = "#E58B61";
        };

        blue = {
          root = "#3E66E0";
          shift = "#4A70E1";
          echo = "#5679E3";
          fade = "#6283E5";
        };

        magenta = {
          root = "#885AC4";
          shift = "#8F64C7";
          echo = "#956dca";
          fade = "#9C76CD";
        };

        cyan = {
          root = "#3F8CDE";
          shift = "#4A93E0";
          echo = "#5599E2";
          fade = "#60A0E4";
        };

        white = {
          root = "#DDDBCF";
          shift = "#C6C4BA";
          echo = "#AFADA5";
          fade = "#989590";
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
