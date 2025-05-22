{
  scheme = {
    colors = {
      primary = "#1F1E2F";
      bg = "#1F1E2F";
      fg = "#B5BDF3";
      black = "#212131";
      red = "#BF839F";
      green = "#C1EED6";
      yellow = "#B5BDF3";
      blue = "#BCE8F7";
      magenta = "#BF839F";
      cyan = "#BBF0EC";
      white = "#B5BDF3";
    };
    variants = {
      dark = {
        bg = {
          root = "#1F1E2F";
          shift = "#212131";
          echo = "#3B3E4F";
          fade = "#47465C";
        };

        fg = {
          root = "#B5BDF3";
          shift = "#A5ADE3";
          echo = "#959DD3";
          fade = "#858DC3";
        };

        red = {
          root = "#FFB5C9";
          shift = "#FFBCCE";
          echo = "#FFC3D4";
          fade = "#FFCBD9";
        };

        black = {
          root = "#212131";
          shift = "#3B3E4F";
          echo = "#47465C";
          fade = "#575669";
        };

        green = {
          root = "#BAE6CE";
          shift = "#C1EED6";
          echo = "#C8F7DD";
          fade = "#CFFFE5";
        };

        yellow = {
          root = "#B5BDF3";
          shift = "#A5ADE3";
          echo = "#959DD3";
          fade = "#858DC3";
        };

        blue = {
          root = "#9FC3FD";
          shift = "#A6C7FD";
          echo = "#AECCFE";
          fade = "#B5D1FF";
        };

        magenta = {
          root = "#CFACF8";
          shift = "#D7B9FB";
          echo = "#DFC6FE";
          fade = "#E3CCFF";
        };

        cyan = {
          root = "#B3E6E1";
          shift = "#BAEEE9";
          echo = "#C0F7F2";
          fade = "#C7FFFA";
        };

        white = {
          root = "#B5BDF3";
          shift = "#A5ADE3";
          echo = "#959DD3";
          fade = "#858DC3";
        };
      };

      light = {
        bg = {
          root = "#B5BDF3";
          shift = "#A5ADE3";
          echo = "#959DD3";
          fade = "#858DC3";
        };

        fg = {
          root = "#1F1E2F";
          shift = "#212131";
          echo = "#3B3E4F";
          fade = "#47465C";
        };

        red = {
          root = "#FFB5C9";
          shift = "#FFBCCE";
          echo = "#FFC3D4";
          fade = "#FFCBD9";
        };

        black = {
          root = "#212131";
          shift = "#3B3E4F";
          echo = "#47465C";
          fade = "#575669";
        };

        green = {
          root = "#BAE6CE";
          shift = "#C1EED6";
          echo = "#C8F7DD";
          fade = "#CFFFE5";
        };

        yellow = {
          root = "#B5BDF3";
          shift = "#C5CDF3";
          echo = "#D5DDF3";
          fade = "#E5EDF3";
        };

        blue = {
          root = "#9FC3FD";
          shift = "#A6C7FD";
          echo = "#AECCFE";
          fade = "#B5D1FF";
        };

        magenta = {
          root = "#CFACF8";
          shift = "#D7B9FB";
          echo = "#DFC6FE";
          fade = "#E3CCFF";
        };

        cyan = {
          root = "#B3E6E1";
          shift = "#BAEEE9";
          echo = "#C0F7F2";
          fade = "#C7FFFA";
        };

        white = {
          root = "#858DC3";
          shift = "#757DB3";
          echo = "#656DA3";
          fade = "#555D93";
        };
      };
    };
  };

  # GTK theme and icon configurations
  gtk = {
    dark = {
      theme = {
        name = "juno-mirage";
        package = "juno-theme";
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
        name = "juno";
        package = "juno-theme";
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
