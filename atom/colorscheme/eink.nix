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
