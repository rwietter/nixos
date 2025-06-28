{
  scheme = {
    colors = {
      primary = "#F5F2E9"; # Soft paper white with warm tint
      bg = "#F5F2E9";
      fg = "#333230"; # Very dark gray with slight warmth
      black = "#333230";
      red = "#695652"; # Extremely subtle reddish gray
      green = "#5A6259"; # Extremely subtle greenish gray
      yellow = "#6B6557"; # Extremely subtle sepia/yellowish gray
      blue = "#565A61"; # Extremely subtle bluish gray
      magenta = "#615A61"; # Extremely subtle purplish gray
      cyan = "#596161"; # Extremely subtle teal gray
      white = "#F5F2E9"; # Paper white
    };
    variants = {
      dark = {
        # Dark mode with #131419 base
        bg = {
          root = "#131419"; # Base dark background
          shift = "#1A1B20"; # Slightly lighter
          echo = "#21222A";  # Even lighter
          fade = "#282A33";  # Lightest variant
        };

        fg = {
          root = "#E2E3E7"; # Clear, readable text with slight coolness
          shift = "#D4D5DC";
          echo = "#C6C8D1";
          fade = "#B8BAC5";
        };

        # Subtle, desaturated accent colors that complement the dark background
        red = {
          root = "#908487"; # Muted red with grayish tone
          shift = "#847A7D";
          echo = "#787073";
          fade = "#6C6568";
        };

        black = {
          root = "#131419"; # Match background
          shift = "#1A1B20";
          echo = "#21222A";
          fade = "#282A33";
        };

        green = {
          root = "#818984"; # Subtle sage green
          shift = "#777F7A";
          echo = "#6D7570";
          fade = "#636B66";
        };

        yellow = {
          root = "#8A8678"; # Warm gray
          shift = "#807C6E";
          echo = "#767264";
          fade = "#6C685A";
        };

        blue = {
          root = "#7E8490"; # Steel blue gray
          shift = "#747A86";
          echo = "#6A707C";
          fade = "#606672";
        };

        magenta = {
          root = "#887E89"; # Subtle purple gray
          shift = "#7E747F";
          echo = "#746A75";
          fade = "#6A606B";
        };

        cyan = {
          root = "#7C858A"; # Cool gray with cyan tint
          shift = "#727B80";
          echo = "#687176";
          fade = "#5E676C";
        };

        white = {
          root = "#E2E3E7"; # Match foreground
          shift = "#D4D5DC";
          echo = "#C6C8D1";
          fade = "#B8BAC5";
        };
      };

      light = {
        # Light mode - paper with dark text (default e-ink look)
        bg = {
          root = "#FBFBF8"; # Soft paper white with warm tint
          shift = "#F0EEEB";
          echo = "#E8E6E1";
          fade = "#E0DED9";
        };

        fg = {
          root = "#474747"; # Dark gray text
          shift = "#414040";
          echo = "#3A3938";
          fade = "#333230";
        };

        red = {
          root = "#695652"; # Extremely subtle reddish gray
          shift = "#615250";
          echo = "#594D4B";
          fade = "#514846";
        };

        black = {
          root = "#333230";
          shift = "#3A3937";
          echo = "#41403E";
          fade = "#484745";
        };

        green = {
          root = "#5A6259"; # Extremely subtle greenish gray
          shift = "#545C54";
          echo = "#4E564E";
          fade = "#485048";
        };

        yellow = {
          root = "#6B6557"; # Extremely subtle sepia/yellowish gray
          shift = "#635E52";
          echo = "#5B574C";
          fade = "#535047";
        };

        blue = {
          root = "#565A61"; # Extremely subtle bluish gray
          shift = "#51555B";
          echo = "#4B4F55";
          fade = "#45494F";
        };

        magenta = {
          root = "#615A61"; # Extremely subtle purplish gray
          shift = "#5A555A";
          echo = "#544F54";
          fade = "#4E494E";
        };

        cyan = {
          root = "#596161"; # Extremely subtle teal gray
          shift = "#545B5B";
          echo = "#4E5555";
          fade = "#484F4F";
        };

        white = {
          root = "#F5F2E9"; # Paper white
          shift = "#E8E5DC";
          echo = "#DBD8CF";
          fade = "#CEC9C2";
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
        name = "Graphite";
        package = "graphite-gtk-theme";
      };
      iconTheme = {
        name = "Paper";
        package = "paper-icon-theme";
      };
      cursor = {
        name = "Vanilla-DMZ";
        package = "vanilla-dmz";
      };
    };
    light = {
      theme = {
        name = "Graphite";
        package = "graphite-gtk-theme";
      };
      iconTheme = {
        name = "Paper";
        package = "paper-icon-theme";
      };
      cursor = {
        name = "Vanilla-DMZ";
        package = "vanilla-dmz";
      };
    };
  };
}
