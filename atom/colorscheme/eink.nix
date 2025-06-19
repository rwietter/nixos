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
        # Dark mode is inverted - dark paper with light text
        bg = {
          root = "#2A2A2A"; # Dark paper
          shift = "#333333";
          echo = "#3D3D3D";
          fade = "#474747";
        };

        fg = {
          root = "#F8F6F1"; # Light text on dark paper
          shift = "#E8E6E1";
          echo = "#D8D6D1";
          fade = "#C8C6C1";
        };

        red = {
          root = "#8A7D7A"; # Very subtle red
          shift = "#827573";
          echo = "#7A6E6C";
          fade = "#726765";
        };

        black = {
          root = "#2D2C2A";
          shift = "#333231";
          echo = "#3A3938";
          fade = "#41403F";
        };

        green = {
          root = "#7D857C"; # Very subtle green
          shift = "#757D75";
          echo = "#6E766E";
          fade = "#676F67";
        };

        yellow = {
          root = "#8A8578"; # Very subtle yellow/sepia
          shift = "#827D71";
          echo = "#7A756A";
          fade = "#726D63";
        };

        blue = {
          root = "#7A7F85"; # Very subtle blue
          shift = "#73777D";
          echo = "#6C7075";
          fade = "#65696E";
        };

        magenta = {
          root = "#857D85"; # Very subtle purple
          shift = "#7D757D";
          echo = "#756E75";
          fade = "#6D676D";
        };

        cyan = {
          root = "#7D8585"; # Very subtle teal
          shift = "#757D7D";
          echo = "#6E7575";
          fade = "#676D6D";
        };

        white = {
          root = "#F5F2E9"; # Paper white
          shift = "#E8E5DC";
          echo = "#DBD8CF";
          fade = "#CEC9C2";
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

/*
{
  scheme = {
    colors = {
      primary = "#F8F6F1"; # Paper white with slight cream tint
      bg = "#F8F6F1";
      fg = "#2A2A2A"; # Dark gray, not pure black for less eye strain
      black = "#2A2A2A";
      red = "#8B4D4D"; # Muted dark red
      green = "#4D6B4D"; # Muted dark green
      yellow = "#8B7D4D"; # Muted dark yellow/sepia
      blue = "#4D5B6B"; # Muted dark blue
      magenta = "#6B4D6B"; # Muted dark purple
      cyan = "#4D6B6B"; # Muted dark teal
      white = "#F8F6F1"; # Paper white
    };
    variants = {
      dark = {
        # Dark mode is inverted - dark paper with light text
        bg = {
          root = "#2A2A2A"; # Dark paper
          shift = "#333333";
          echo = "#3D3D3D";
          fade = "#474747";
        };

        fg = {
          root = "#F8F6F1"; # Light text on dark paper
          shift = "#E8E6E1";
          echo = "#D8D6D1";
          fade = "#C8C6C1";
        };

        red = {
          root = "#A67C7C"; # Muted red
          shift = "#9E7676";
          echo = "#967070";
          fade = "#8E6A6A";
        };

        black = {
          root = "#2A2A2A";
          shift = "#333333";
          echo = "#3D3D3D";
          fade = "#474747";
        };

        green = {
          root = "#7C9A7C"; # Muted green
          shift = "#769476";
          echo = "#708E70";
          fade = "#6A886A";
        };

        yellow = {
          root = "#A69C7C"; # Muted yellow/sepia
          shift = "#9E9676";
          echo = "#969070";
          fade = "#8E8A6A";
        };

        blue = {
          root = "#7C8A9A"; # Muted blue
          shift = "#768494";
          echo = "#707E8E";
          fade = "#6A7888";
        };

        magenta = {
          root = "#9A7C9A"; # Muted purple
          shift = "#947694";
          echo = "#8E708E";
          fade = "#886A88";
        };

        cyan = {
          root = "#7C9A9A"; # Muted teal
          shift = "#769494";
          echo = "#708E8E";
          fade = "#6A8888";
        };

        white = {
          root = "#F8F6F1"; # Paper white
          shift = "#E8E6E1";
          echo = "#D8D6D1";
          fade = "#C8C6C1";
        };
      };

      light = {
        # Light mode - paper with dark text (default e-ink look)
        bg = {
          root = "#F8F6F1"; # Paper white with slight cream tint
          shift = "#F0EEE9"; # Slightly darker paper
          echo = "#E8E6E1"; # More aged paper look
          fade = "#E0DED9"; # Most aged paper look
        };

        fg = {
          root = "#2A2A2A"; # Dark gray text
          shift = "#333333";
          echo = "#3D3D3D";
          fade = "#474747";
        };

        red = {
          root = "#8B4D4D"; # Muted dark red
          shift = "#7D4545";
          echo = "#6F3D3D";
          fade = "#613535";
        };

        black = {
          root = "#2A2A2A";
          shift = "#333333";
          echo = "#3D3D3D";
          fade = "#474747";
        };

        green = {
          root = "#4D6B4D"; # Muted dark green
          shift = "#456345";
          echo = "#3D5B3D";
          fade = "#355335";
        };

        yellow = {
          root = "#8B7D4D"; # Muted dark yellow/sepia
          shift = "#7D7145";
          echo = "#6F653D";
          fade = "#615935";
        };

        blue = {
          root = "#4D5B6B"; # Muted dark blue
          shift = "#455363";
          echo = "#3D4B5B";
          fade = "#354353";
        };

        magenta = {
          root = "#6B4D6B"; # Muted dark purple
          shift = "#634563";
          echo = "#5B3D5B";
          fade = "#533553";
        };

        cyan = {
          root = "#4D6B6B"; # Muted dark teal
          shift = "#456363";
          echo = "#3D5B5B";
          fade = "#355353";
        };

        white = {
          root = "#F8F6F1"; # Paper white
          shift = "#E8E6E1";
          echo = "#D8D6D1";
          fade = "#C8C6C1";
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
*/