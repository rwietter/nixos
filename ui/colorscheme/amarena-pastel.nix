{
  scheme = {
    colors = {
      primary = "#F2A9BF";
      bg = "#232833";
      fg = "#E9EDF6";
      black = "#2D3442";
      red = "#F2A9BF";
      green = "#B8DBBA";
      yellow = "#F3D2B2";
      blue = "#A8D6E3";
      magenta = "#D9B2D8";
      cyan = "#B5E5DA";
      white = "#F6F2EE";
    };
    variants = {
      dark = {
        bg = {
          root = "#232833";
          shift = "#2B3140";
          echo = "#353C4D";
          fade = "#40485B";
        };

        fg = {
          root = "#E9EDF6";
          shift = "#D8DEEB";
          echo = "#C8CFDF";
          fade = "#B8C0D4";
        };

        red = {
          root = "#F2A9BF";
          shift = "#F5B7C9";
          echo = "#F8C5D3";
          fade = "#FAD3DD";
        };

        black = {
          root = "#2D3442";
          shift = "#384052";
          echo = "#434B60";
          fade = "#4E5670";
        };

        green = {
          root = "#B8DBBA";
          shift = "#C4E2C5";
          echo = "#D0E9D0";
          fade = "#DCF0DB";
        };

        yellow = {
          root = "#F3D2B2";
          shift = "#F5DABC";
          echo = "#F7E1C7";
          fade = "#F9E9D1";
        };

        blue = {
          root = "#A8D6E3";
          shift = "#B8DFE9";
          echo = "#C7E8EF";
          fade = "#D7F1F5";
        };

        magenta = {
          root = "#D9B2D8";
          shift = "#E0C0DF";
          echo = "#E7CEE6";
          fade = "#EEDCED";
        };

        cyan = {
          root = "#B5E5DA";
          shift = "#C3EBDD";
          echo = "#D1F1E7";
          fade = "#DFF7F1";
        };

        white = {
          root = "#F6F2EE";
          shift = "#ECE7E2";
          echo = "#E2DDD8";
          fade = "#D8D3CE";
        };
      };

      light = {
        bg = {
          root = "#FFFDFB";
          shift = "#F6F2EE";
          echo = "#ECE6E1";
          fade = "#E2DAD4";
        };

        fg = {
          root = "#4B556A";
          shift = "#5A6480";
          echo = "#697395";
          fade = "#7882AA";
        };

        red = {
          root = "#D98AA5";
          shift = "#E29AB2";
          echo = "#EAAAC0";
          fade = "#F2BACE";
        };

        black = {
          root = "#4B556A";
          shift = "#5A6480";
          echo = "#697395";
          fade = "#7882AA";
        };

        green = {
          root = "#86B892";
          shift = "#97C3A1";
          echo = "#A8CEB0";
          fade = "#B9D9BF";
        };

        yellow = {
          root = "#D8B98F";
          shift = "#E0C59F";
          echo = "#E8D1AF";
          fade = "#EFDDBF";
        };

        blue = {
          root = "#7FB8CF";
          shift = "#91C3D8";
          echo = "#A3CEE1";
          fade = "#B5D9EA";
        };

        magenta = {
          root = "#B995C4";
          shift = "#C5A5CD";
          echo = "#D1B6D6";
          fade = "#DDC6DF";
        };

        cyan = {
          root = "#89D1C4";
          shift = "#9BD9CD";
          echo = "#ADE1D6";
          fade = "#BFE9DF";
        };

        white = {
          root = "#FFFDFB";
          shift = "#F6F2EE";
          echo = "#ECE6E1";
          fade = "#E2DAD4";
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
