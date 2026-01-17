{
  scheme = {
    colors = {
      primary = "#fafafa";
      bg = "#fafafa";
      fg = "#09090b";
      black = "#18181b";
      red = "#27272a";
      green = "#3f3f46";
      yellow = "#52525b";
      blue = "#71717a";
      magenta = "#a1a1aa";
      cyan = "#d4d4d8";
      white = "#e4e4e7";
    };
    variants = {
      dark = {
        bg = {
          root = "#09090b";
          shift = "#18181b";
          echo = "#27272a";
          fade = "#3f3f46";
        };

        fg = {
          root = "#fafafa";
          shift = "#f4f4f5";
          echo = "#e4e4e7";
          fade = "#d4d4d8";
        };

        red = {
          root = "#27272a";
          shift = "#3f3f46";
          echo = "#52525b";
          fade = "#71717a";
        };

        black = {
          root = "#18181b";
          shift = "#27272a";
          echo = "#3f3f46";
          fade = "#52525b";
        };

        green = {
          root = "#3f3f46";
          shift = "#52525b";
          echo = "#71717a";
          fade = "#a1a1aa";
        };

        yellow = {
          root = "#52525b";
          shift = "#71717a";
          echo = "#a1a1aa";
          fade = "#d4d4d8";
        };

        blue = {
          root = "#71717a";
          shift = "#a1a1aa";
          echo = "#d4d4d8";
          fade = "#e4e4e7";
        };

        magenta = {
          root = "#a1a1aa";
          shift = "#d4d4d8";
          echo = "#e4e4e7";
          fade = "#f4f4f5";
        };

        cyan = {
          root = "#d4d4d8";
          shift = "#e4e4e7";
          echo = "#f4f4f5";
          fade = "#fafafa";
        };

        white = {
          root = "#e4e4e7";
          shift = "#f4f4f5";
          echo = "#fafafa";
          fade = "#09090b";
        };
      };

      light = {
        bg = {
          root = "#fafafa";
          shift = "#f4f4f5";
          echo = "#e4e4e7";
          fade = "#d4d4d8";
        };

        fg = {
          root = "#09090b";
          shift = "#18181b";
          echo = "#27272a";
          fade = "#3f3f46";
        };

        red = {
          root = "#27272a";
          shift = "#3f3f46";
          echo = "#52525b";
          fade = "#71717a";
        };

        black = {
          root = "#18181b";
          shift = "#27272a";
          echo = "#3f3f46";
          fade = "#52525b";
        };

        green = {
          root = "#3f3f46";
          shift = "#52525b";
          echo = "#71717a";
          fade = "#a1a1aa";
        };

        yellow = {
          root = "#52525b";
          shift = "#71717a";
          echo = "#a1a1aa";
          fade = "#d4d4d8";
        };

        blue = {
          root = "#71717a";
          shift = "#a1a1aa";
          echo = "#d4d4d8";
          fade = "#e4e4e7";
        };

        magenta = {
          root = "#a1a1aa";
          shift = "#d4d4d8";
          echo = "#e4e4e7";
          fade = "#f4f4f5";
        };

        cyan = {
          root = "#d4d4d8";
          shift = "#e4e4e7";
          echo = "#f4f4f5";
          fade = "#fafafa";
        };

        white = {
          root = "#e4e4e7";
          shift = "#f4f4f5";
          echo = "#fafafa";
          fade = "#09090b";
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
        name = "Juno";
        package = "juno-gtk-theme";
      };
      iconTheme = {
        name = "Juno";
        package = "juno-icon-theme";
      };
      cursor = {
        name = "Nordzy";
        package = "nordzy-cursor-theme";
      };
    };
    light = {
      theme = {
        name = "Juno";
        package = "juno-gtk-theme";
      };
      iconTheme = {
        name = "Juno";
        package = "juno-icon-theme";
      };
      cursor = {
        name = "Nordzy";
        package = "nordzy-cursor-theme";
      };
    };
  };
}
