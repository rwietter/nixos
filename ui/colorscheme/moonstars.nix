{
  scheme = {
    colors = {
      primary = "#9575cd";
      bg = "#191E26";
      fg = "#DDDED1";
      black = "#596173";
      red = "#f48771";
      green = "#BDBE5D";
      yellow = "#dbc646";
      blue = "#7ecde7";
      magenta = "#E3AED4";
      cyan = "#89B7AE";
      white = "#EDEDED";
    };
    variants = {
      dark = {
        bg = {
          root = "#191E26"; # #171c28
          shift = "#1E242E"; # 1B212F
          echo = "#232A35"; # 1F2636
          fade = "#29303E"; # 242B3D
        };

        fg = {
          root = "#DDDED1";
          shift = "#E1E3D7";
          echo = "#E4E6DD";
          fade = "#E7E8E3";
        };

        red = {
          root = "#F0A6A6";
          shift = "#F2ACAB";
          echo = "#F4B3B1";
          fade = "#F6BAB7";
        };

        black = {
          root = "#596173";
          shift = "#5F677A";
          echo = "#646C81";
          fade = "#6A7187";
        };

        green = {
          root = "#C8D69A";
          shift = "#CEDDA0";
          echo = "#D3E1A5";
          fade = "#D8E5AA";
        };

        yellow = {
          root = "#E2D69B";
          shift = "#E5DDA0";
          echo = "#E8E3A6";
          fade = "#EBE8AB";
        };

        blue = {
          root = "#C0DDE7";
          shift = "#C5E1EC";
          echo = "#CAD5F0";
          fade = "#CED9F5";
        };

        magenta = {
          root = "#EAD6ED";
          shift = "#EBDDF2";
          echo = "#EDDAF8";
          fade = "#F0E2FD";
        };

        cyan = {
          root = "#BEDFCB";
          shift = "#C1E2D2";
          echo = "#C5E8D8";
          fade = "#CAEFDF";
        };

        white = {
          root = "#EDEDED";
          shift = "#F2F2F2";
          echo = "#F7F7F7";
          fade = "#FCFCFC";
        };
      };

      light = {
        bg = {
          root = "#F4F6F6";
          shift = "#E7EAEB";
          echo = "#DBDDE1";
          fade = "#CDD0D3";
        };

        fg = {
          root = "#434343";
          shift = "#585858";
          echo = "#6C6C6C";
          fade = "#808080";
        };
        red = {
          root = "#FA462E";
          shift = "#FA5744";
          echo = "#FA6759";
          fade = "#FB766D";
        };

        black = {
          root = "#565759";
          shift = "#6A6A6C";
          echo = "#7E7D7F";
          fade = "#919192";
        };
        green = {
          root = "#86AA2A";
          shift = "#8FB139";
          echo = "#98B947";
          fade = "#A1C156";
        };

        yellow = {
          root = "#ECAC09";
          shift = "#EEB623";
          echo = "#EFBF3D";
          fade = "#F1CA58";
        };
        blue = {
          root = "#5CB4CB";
          shift = "#68BACF";
          echo = "#75C1D4";
          fade = "#81C9D9";
        };

        magenta = {
          root = "#DD3C91";
          shift = "#DE4B9C";
          echo = "#E05AA6";
          fade = "#E269B1";
        };
        cyan = {
          root = "#53AB99";
          shift = "#5FADA0";
          echo = "#6BADAB";
          fade = "#76B2B0";
        };

        white = {
          root = "#EDEDED";
          shift = "#F2F2F2";
          echo = "#F7F7F7";
          fade = "#FCFCFC";
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
