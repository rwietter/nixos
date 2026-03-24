{
  scheme = {
    colors = {
      primary = "#F8D2C9";
      bg = "#151726";
      fg = "#DEE0EF";
      black = "#232534";
      red = "#ee8679";
      green = "#5ba2d0";
      yellow = "#a78bfa";
      blue = "#94b8ff";
      magenta = "#9ccfd8";
      cyan = "#F8D2C9";
      white = "#DEE0EF";
    };
    variants = {
      dark = {
        bg = {
          root = "#151726";
          shift = "#1C1E2D";
          echo = "#232534";
          fade = "#6B6D7C";
        };

        fg = {
          root = "#DEE0EF";
          shift = "#8D8F9E";
          echo = "#6B6D7C";
          fade = "#4F5160";
        };

        red = {
          root = "#ee8679";
          shift = "#F09386";
          echo = "#F2A095";
          fade = "#F4ADA4";
        };

        black = {
          root = "#232534";
          shift = "#2E3040";
          echo = "#393B4B";
          fade = "#444655";
        };

        green = {
          root = "#5ba2d0";
          shift = "#67AAD5";
          echo = "#73B3DA";
          fade = "#7FBBDF";
        };

        yellow = {
          root = "#a78bfa";
          shift = "#B096FB";
          echo = "#B9A1FC";
          fade = "#C2ACFD";
        };

        blue = {
          root = "#94b8ff";
          shift = "#9FC0FF";
          echo = "#AAC8FF";
          fade = "#B5D1FF";
        };

        magenta = {
          root = "#9ccfd8";
          shift = "#A8D5DD";
          echo = "#B4DBE2";
          fade = "#C0E1E7";
        };

        cyan = {
          root = "#F8D2C9";
          shift = "#F9D9D1";
          echo = "#FADFD8";
          fade = "#FBE6E0";
        };

        white = {
          root = "#DEE0EF";
          shift = "#CBD1E4";
          echo = "#B8C2D9";
          fade = "#A5B3CE";
        };
      };

      light = {
        bg = {
          root = "#FDFDFE";
          shift = "#F1F1F4";
          echo = "#D8DAE4";
          fade = "#C6C9D8";
        };

        fg = {
          root = "#4E5377";
          shift = "#5F6488";
          echo = "#8388AD";
          fade = "#9A9FBE";
        };

        red = {
          root = "#D26A5D";
          shift = "#DE786B";
          echo = "#E9857A";
          fade = "#F19A8E";
        };

        black = {
          root = "#4E5377";
          shift = "#454A6C";
          echo = "#3D4160";
          fade = "#343854";
        };

        green = {
          root = "#3788BE";
          shift = "#4A94C5";
          echo = "#5EA0CC";
          fade = "#7397DE";
        };

        yellow = {
          root = "#886CDB";
          shift = "#977DE0";
          echo = "#A68EE5";
          fade = "#B59FEA";
        };

        blue = {
          root = "#7397DE";
          shift = "#82A3E2";
          echo = "#91AFE6";
          fade = "#A0BBEA";
        };

        magenta = {
          root = "#77AAB3";
          shift = "#86B4BC";
          echo = "#95BEC5";
          fade = "#A4C8CE";
        };

        cyan = {
          root = "#F19A8E";
          shift = "#F3A89D";
          echo = "#F5B6AC";
          fade = "#F7C4BB";
        };

        white = {
          root = "#FDFDFE";
          shift = "#F1F1F4";
          echo = "#E5E6EC";
          fade = "#D8DAE4";
        };
      };
    };
  };

  # GTK theme and icon configurations
  # Themes <https://search.nixos.org/packages?channel=unstable&from=0&size=200&sort=relevance&type=packages&query=-gtk-theme>
  # Icons <https://search.nixos.org/packages?channel=unstable&from=0&size=200&sort=relevance&type=packages&query=-icon-theme>
  # Cursors <https://search.nixos.org/packages?channel=unstable&from=0&size=200&sort=relevance&type=packages&query=-cursor-theme>
  gtk = {
    dark = {
      theme = {
        name = "Omni";
        package = "omni-gtk-theme";
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
