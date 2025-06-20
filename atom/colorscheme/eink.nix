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
        # Paleta de cores aprimorada para melhor contraste e legibilidade.
        bg = {
          root = "#242424"; # Fundo de "papel escuro" mais profundo e neutro
          shift = "#2C2C2C";
          echo = "#353535";
          fade = "#3F3F3F";
        };

        fg = {
          root = "#EAE8E1"; # Texto claro e legível com um toque quente
          shift = "#DCDAD4";
          echo = "#CEC9C2";
          fade = "#C0BBB4";
        };

        # Cores de destaque mais claras para se destacarem no fundo escuro.
        red = {
          root = "#C5AFAF"; # Vermelho pálido
          shift = "#B9A3A3";
          echo = "#AD9797";
          fade = "#A18B8B";
        };

        black = {
          root = "#2D2C2A";
          shift = "#333231";
          echo = "#3A3938";
          fade = "#41403F";
        };

        green = {
          root = "#AFC5AF"; # Verde pálido
          shift = "#A3B9A3";
          echo = "#97AD97";
          fade = "#8BA18B";
        };

        yellow = {
          root = "#C5C0AF"; # Amarelo/sépia pálido
          shift = "#B9B4A3";
          echo = "#ADAA97";
          fade = "#A19E8B";
        };

        blue = {
          root = "#AFB9C5"; # Azul pálido
          shift = "#A3AAB9";
          echo = "#979DAE";
          fade = "#8B91A2";
        };

        magenta = {
          root = "#C5AFC5"; # Magenta pálido
          shift = "#B9A3B9";
          echo = "#AD97AD";
          fade = "#A18BA1";
        };

        cyan = {
          root = "#AFC5C5"; # Ciano pálido
          shift = "#A3B9B9";
          echo = "#97ADAD";
          fade = "#8BA1A1";
        };

        white = {
          root = "#F5F2E9"; # Branco papel original
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
