{
  scheme = {
    colors = {
      primary = "#1F1E2F";
      bg = "#1F1E2F";
      fg = "#CAD3F5";
      black = "#1f1e2f";
      red = "#f2a2af";
      green = "#9dc0c7";
      yellow = "#e9d5b7";
      blue = "#97aec3";
      magenta = "#c9a7fa";
      cyan = "#b1cdd2";
      white = "#CAD3F5";
    };
    variants = {
      dark = {
        bg = {
          root = "#1F1E2F";
          shift = "#202335";
          echo = "#25283A";
          fade = "#515668";
        };

        fg = {
          root = "#CAD3F5";
          shift = "#B8C0E0";
          echo = "#A5ADCB";
          fade = "#939AB7";
        };

        red = {
          root = "#f2a2af";
          shift = "#f5b9c3";
          echo = "#f9d0d7";
          fade = "#fce8eb";
        };

        black = {
          root = "#1f1e2f";
          shift = "#1f1e2f";
          echo = "#424064";
          fade = "#656198";
        };

        green = {
          root = "#9dc0c7";
          shift = "#b1cdd2";
          echo = "#c5d9dd";
          fade = "#d8e6e9";
        };

        yellow = {
          root = "#e9d5b7";
          shift = "#eedec7";
          echo = "#f2e6d5";
          fade = "#f6efe3";
        };

        blue = {
          root = "#97aec3";
          shift = "#b1c2d2";
          echo = "#cbd7e1";
          fade = "#e5ebf0";
        };

        magenta = {
          root = "#c9a7fa";
          shift = "#d5bafb";
          echo = "#dfcbfc";
          fade = "#eadcfd";
        };

        cyan = {
          root = "#b1cdd2";
          shift = "#c5d9dd";
          echo = "#d8e6e9";
          fade = "#ecf2f4";
        };

        white = {
          root = "#CAD3F5";
          shift = "#D0D8F6";
          echo = "#D6DDF7";
          fade = "#DCE2F8";
        };
      };

      light = {
        bg = {
          root = "#EFF1F5";
          shift = "#E6E9EF";
          echo = "#DCE0E8";
          fade = "#CCD0E0";
        };

        fg = {
          root = "#1f1e2f";
          shift = "#1f1e2f";
          echo = "#424064";
          fade = "#656198";
        };

        red = {
          root = "#D20F39";
          shift = "#D62647";
          echo = "#DA3D55";
          fade = "#DE5363";
        };

        black = {
          root = "#1f1e2f";
          shift = "#1f1e2f";
          echo = "#424064";
          fade = "#656198";
        };

        green = {
          root = "#9dc0c7";
          shift = "#b1cdd2";
          echo = "#c5d9dd";
          fade = "#d8e6e9";
        };

        yellow = {
          root = "#e9d5b7";
          shift = "#eedec7";
          echo = "#f2e6d5";
          fade = "#f6efe3";
        };

        blue = {
          root = "#97aec3";
          shift = "#b1c2d2";
          echo = "#cbd7e1";
          fade = "#e5ebf0";
        };

        magenta = {
          root = "#c9a7fa";
          shift = "#d5bafb";
          echo = "#dfcbfc";
          fade = "#eadcfd";
        };

        cyan = {
          root = "#b1cdd2";
          shift = "#c5d9dd";
          echo = "#d8e6e9";
          fade = "#ecf2f4";
        };

        white = {
          root = "#DCE0E8";
          shift = "#E1E4EC";
          echo = "#E6E8F0";
          fade = "#EBECF4";
        };
      };
    };
  };

  gtk = {
    dark = {
      theme = {
        name = "Catppuccin-Macchiato-Standard-Blue-Dark";
        package = "catppuccin-gtk";
      };
      iconTheme = {
        name = "Papirus-Dark";
        package = "papirus-icon-theme";
      };
      cursor = {
        name = "Catppuccin-Macchiato-Dark";
        package = "catppuccin-cursors";
      };
    };
    light = {
      theme = {
        name = "Catppuccin-Latte-Standard-Blue-Light";
        package = "catppuccin-gtk";
      };
      iconTheme = {
        name = "Papirus-Light";
        package = "papirus-icon-theme";
      };
      cursor = {
        name = "Catppuccin-Latte-Light";
        package = "catppuccin-cursors";
      };
    };
  };
}
