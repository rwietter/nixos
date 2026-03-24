{
  scheme = {
    colors = {
      primary = "#F39ADF";
      bg = "#1F1B2E";
      fg = "#F6F2FF";
      black = "#2A2440";
      red = "#FF7F9F";
      green = "#8DECC8";
      yellow = "#F6DF86";
      blue = "#7AD8FF";
      magenta = "#D89BFF";
      cyan = "#7EF3F1";
      white = "#F6F2FF";
    };
    variants = {
      dark = {
        bg = {
          root = "#1F1B2E";
          shift = "#26213A";
          echo = "#30294A";
          fade = "#3B3260";
        };

        fg = {
          root = "#F6F2FF";
          shift = "#D7CDEE";
          echo = "#B9ADD9";
          fade = "#9F93C2";
        };

        red = {
          root = "#FF7F9F";
          shift = "#FF93AE";
          echo = "#FFA7BD";
          fade = "#FFBBCB";
        };

        black = {
          root = "#2A2440";
          shift = "#352D50";
          echo = "#403760";
          fade = "#4B4270";
        };

        green = {
          root = "#8DECC8";
          shift = "#9BEFD0";
          echo = "#A9F2D8";
          fade = "#B8F5E0";
        };

        yellow = {
          root = "#F6DF86";
          shift = "#F8E49A";
          echo = "#FAE8AE";
          fade = "#FCEDC2";
        };

        blue = {
          root = "#7AD8FF";
          shift = "#8ADFFF";
          echo = "#9AE5FF";
          fade = "#AAECFF";
        };

        magenta = {
          root = "#D89BFF";
          shift = "#DEA9FF";
          echo = "#E5B7FF";
          fade = "#EBC5FF";
        };

        cyan = {
          root = "#7EF3F1";
          shift = "#90F5F3";
          echo = "#A2F7F5";
          fade = "#B4F9F7";
        };

        white = {
          root = "#F6F2FF";
          shift = "#ECE6FA";
          echo = "#E2DAF4";
          fade = "#D8CEEE";
        };
      };

      light = {
        bg = {
          root = "#FFF8FF";
          shift = "#F3EBFF";
          echo = "#E7DCF7";
          fade = "#D8CDEE";
        };

        fg = {
          root = "#3F3560";
          shift = "#514674";
          echo = "#63588A";
          fade = "#766CA1";
        };

        red = {
          root = "#E9658F";
          shift = "#EE779D";
          echo = "#F389AB";
          fade = "#F89BB9";
        };

        black = {
          root = "#3F3560";
          shift = "#4B416F";
          echo = "#574E7D";
          fade = "#635A8C";
        };

        green = {
          root = "#5FBFA4";
          shift = "#72C8B1";
          echo = "#85D1BE";
          fade = "#98DACB";
        };

        yellow = {
          root = "#D4B95D";
          shift = "#DDC672";
          echo = "#E5D387";
          fade = "#EEE09C";
        };

        blue = {
          root = "#5EAED9";
          shift = "#71B9E0";
          echo = "#84C4E6";
          fade = "#97CFED";
        };

        magenta = {
          root = "#AE78D9";
          shift = "#BA8AE0";
          echo = "#C69CE7";
          fade = "#D2AEED";
        };

        cyan = {
          root = "#63D4D0";
          shift = "#76DBD7";
          echo = "#89E2DE";
          fade = "#9CE9E5";
        };

        white = {
          root = "#FFF8FF";
          shift = "#F3EBFF";
          echo = "#E7DCF7";
          fade = "#D8CDEE";
        };
      };
    };
  };

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
