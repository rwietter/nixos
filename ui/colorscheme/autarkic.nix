{
  scheme = {
    colors = {
      primary = "#5A5A66";
      bg = "#282C34";
      fg = "#ABB2BF";
      black = "#1B1D23";
      red = "#FAD4D1";
      green = "#D8EDD8";
      yellow = "#FAF0DC";
      blue = "#D0E7F9";
      magenta = "#F3D9F7";
      cyan = "#D5F4F4";
      white = "#DFDFE5";
    };
    variants = {
      dark = {
        bg = {
          root = "#282C34";
          shift = "#2C313C";
          echo = "#323845";
          fade = "#383E4E";
        };

        fg = {
          root = "#ABB2BF";
          shift = "#B0B8C3";
          echo = "#B6BEC9";
          fade = "#BCC4CF";
        };

        red = {
          root = "#FAD4D1";
          shift = "#FBDCD9";
          echo = "#FCE3E0";
          fade = "#FDEAE8";
        };

        black = {
          root = "#2A2A2E";
          shift = "#2F2F33";
          echo = "#343438";
          fade = "#39393D";
        };

        green = {
          root = "#D8EDD8";
          shift = "#DBF0DB";
          echo = "#DEF3DE";
          fade = "#E1F6E1";
        };

        yellow = {
          root = "#FAF0DC";
          shift = "#FBF3E2";
          echo = "#FCF6E8";
          fade = "#FDF9EE";
        };

        blue = {
          root = "#D0E7F9";
          shift = "#D4EAFB";
          echo = "#D8EDFD";
          fade = "#DCF0FF";
        };

        magenta = {
          root = "#F3D9F7";
          shift = "#F5DFF8";
          echo = "#F7E5F9";
          fade = "#F9EBFA";
        };

        cyan = {
          root = "#D5F4F4";
          shift = "#D8F6F6";
          echo = "#DBF8F8";
          fade = "#DEF9F9";
        };

        white = {
          root = "#E6E6E6";
          shift = "#EBEBEB";
          echo = "#F0F0F0";
          fade = "#F5F5F5";
        };
      };

      light = {
        bg = {
          root = "#FAFAFA";
          shift = "#F0F0F0";
          echo = "#E6E6E6";
          fade = "#DCDCDC";
        };

        fg = {
          root = "#383A42";
          shift = "#40424A";
          echo = "#484A52";
          fade = "#50525A";
        };

        black = {
          root = "#1E1E22";
          shift = "#23232A";
          echo = "#282830";
          fade = "#2D2D36";
        };

        red = {
          root = "#FAD4D1";
          shift = "#FBDCD9";
          echo = "#FCE3E0";
          fade = "#FDEAE8";
        };

        green = {
          root = "#D8EDD8";
          shift = "#DBF0DB";
          echo = "#DEF3DE";
          fade = "#E1F6E1";
        };

        yellow = {
          root = "#FAF0DC";
          shift = "#FBF3E2";
          echo = "#FCF6E8";
          fade = "#FDF9EE";
        };

        blue = {
          root = "#D0E7F9";
          shift = "#D4EAFB";
          echo = "#D8EDFD";
          fade = "#DCF0FF";
        };

        magenta = {
          root = "#F3D9F7";
          shift = "#F5DFF8";
          echo = "#F7E5F9";
          fade = "#F9EBFA";
        };

        cyan = {
          root = "#D5F4F4";
          shift = "#D8F6F6";
          echo = "#DBF8F8";
          fade = "#DEF9F9";
        };

        white = {
          root = "#F8F8F2";
          shift = "#EFEFEA";
          echo = "#E6E6E2";
          fade = "#DDDDD9";
        };
      };
    };
  };

  # GTK theme and icon configurations
  gtk = {
    dark = {
      theme = {
        name = "Omni";
        package = "omni-gtk-theme"; # colloid-gtk-theme
      };
      iconTheme = {
        name = "Reversal";
        package = "reversal-icon-theme";
      };
      cursor = {
        name = "Nordzy";
        package = "nordzy-cursor-theme";
      };
    };
    light = {
      theme = {
        name = "Rose Pine";
        package = "rose-pine-gtk-theme";
      };
      iconTheme = {
        name = "Rose Pine";
        package = "rose-pine-icon-theme";
      };
      cursor = {
        name = "Nordzy";
        package = "nordzy-cursor-theme";
      };
    };
  };
}
