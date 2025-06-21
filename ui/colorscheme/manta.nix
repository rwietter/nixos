{
  scheme = {
    colors = {
      primary = "#1E2541";
      bg = "#1E2541";
      fg = "#EEFFFF";
      black = "#1E2541";
      red = "#F0719B";
      green = "#5AF7B0";
      yellow = "#FFA56B";
      blue = "#57C7FF";
      magenta = "#C792EA";
      cyan = "#89DDFF";
      white = "#EEFFFF";
    };
    variants = {
      dark = {
        bg = {
          root = "#1E2541";
          shift = "#2A335A";
          echo = "#2E3860";
          fade = "#354274";
        };

        fg = {
          root = "#EEFFFF";
          shift = "#E6F7F7";
          echo = "#DEE6E7";
          fade = "#D6DEDF";
        };

        red = {
          root = "#F0719B";
          shift = "#F02E6E";
          echo = "#F04F84";
          fade = "#F0719B";
        };

        black = {
          root = "#1E2541";
          shift = "#2A335A";
          echo = "#2E3860";
          fade = "#354274";
        };

        green = {
          root = "#5AF7B0";
          shift = "#2CE592";
          echo = "#44EEA1";
          fade = "#5AF7B0";
        };

        yellow = {
          root = "#FFA56B";
          shift = "#FF8537";
          echo = "#FF9551";
          fade = "#FFA56B";
        };

        blue = {
          root = "#57C7FF";
          shift = "#1DA0E2";
          echo = "#3AB3F0";
          fade = "#57C7FF";
        };

        magenta = {
          root = "#C792EA";
          shift = "#A742EA";
          echo = "#B76AEA";
          fade = "#C792EA";
        };

        cyan = {
          root = "#89DDFF";
          shift = "#47BAE8";
          echo = "#68CCF3";
          fade = "#89DDFF";
        };

        white = {
          root = "#EEFFFF";
          shift = "#E6F7F7";
          echo = "#DEE6E7";
          fade = "#D6DEDF";
        };
      };

      light = {
        bg = {
          root = "#EEFFFF";
          shift = "#E6F7F7";
          echo = "#DEE6E7";
          fade = "#D6DEDF";
        };

        fg = {
          root = "#1E2541";
          shift = "#2A335A";
          echo = "#2E3860";
          fade = "#354274";
        };

        red = {
          root = "#F02E6E";
          shift = "#F04F84";
          echo = "#F0719B";
          fade = "#F093B1";
        };

        black = {
          root = "#1E2541";
          shift = "#2A335A";
          echo = "#2E3860";
          fade = "#354274";
        };

        green = {
          root = "#2CE592";
          shift = "#44EEA1";
          echo = "#5AF7B0";
          fade = "#71F9BE";
        };

        yellow = {
          root = "#FF8537";
          shift = "#FF9551";
          echo = "#FFA56B";
          fade = "#FFB585";
        };

        blue = {
          root = "#1DA0E2";
          shift = "#3AB3F0";
          echo = "#57C7FF";
          fade = "#74DBFF";
        };

        magenta = {
          root = "#A742EA";
          shift = "#B76AEA";
          echo = "#C792EA";
          fade = "#D7BAEF";
        };

        cyan = {
          root = "#47BAE8";
          shift = "#68CCF3";
          echo = "#89DDFF";
          fade = "#AAE9FF";
        };

        white = {
          root = "#DEE6E7";
          shift = "#D6DEDF";
          echo = "#CED6D7";
          fade = "#C6CECF";
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
