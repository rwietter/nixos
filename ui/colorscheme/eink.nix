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
        # Pure monochromatic dark theme
        bg = {
          root = "#131419"; # Base dark background
          shift = "#1E1F24"; # More visible depth
          echo = "#292A30";  # Clear elevation
          fade = "#34353B";  # Distinct highlight
        };

        fg = {
          root = "#BABBBD"; # Reduced contrast text
          shift = "#A7A8AA"; # Gentle fade
          echo = "#939497"; # Muted text
          fade = "#7F8084"; # Soft detail
        };

        # Pure grayscale accents
        red = {
          root = "#8C8C8C"; # Light gray
          shift = "#7A7A7A"; # Medium gray
          echo = "#686868"; # Dark gray
          fade = "#565656"; # Deeper gray
        };

        black = {
          root = "#232325"; # Daker neutral
					shift = "#2A2B2F"; # Slightly lighter neutral
					echo = "#313233"; # Medium dark neutral
					fade = "#38393D"; # Deep dark neutral
        };

        green = {
          root = "#959595"; # Light neutral
          shift = "#838383"; # Medium neutral
          echo = "#717171"; # Dark neutral
          fade = "#5F5F5F"; # Deep neutral
        };

        yellow = {
          root = "#9E9E9E"; # Light accent
          shift = "#8C8C8C"; # Medium accent
          echo = "#7A7A7A"; # Dark accent
          fade = "#686868"; # Deep accent
        };

        blue = {
          root = "#878787"; # Light shade
          shift = "#757575"; # Medium shade
          echo = "#636363"; # Dark shade
          fade = "#515151"; # Deep shade
        };

        magenta = {
          root = "#909090"; # Light tone
          shift = "#7E7E7E"; # Medium tone
          echo = "#6C6C6C"; # Dark tone
          fade = "#5A5A5A"; # Deep tone
        };

        cyan = {
          root = "#828282"; # Light cool
          shift = "#707070"; # Medium cool
          echo = "#5E5E5E"; # Dark cool
          fade = "#4C4C4C"; # Deep cool
        };

        white = {
          root = "#BABBBD"; # Match foreground
          shift = "#A7A8AA"; # Soft white
          echo = "#939497"; # Muted white
          fade = "#7F8084"; # Dim white
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
