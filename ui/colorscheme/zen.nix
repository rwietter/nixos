{
  scheme = {
    colors = {
      primary = "#52525b"; # Zinc-700
      bg = "#27272a"; # Zinc-900
      fg = "#71717a"; # Zinc-600
      black = "#18181b"; # Zinc-950
      red = "#52525b"; # Zinc-700
      green = "#3f3f46"; # Zinc-800
      yellow = "#71717a"; # Zinc-600
      blue = "#52525b"; # Zinc-700
      magenta = "#3f3f46"; # Zinc-800
      cyan = "#71717a"; # Zinc-600
      white = "#27272a"; # Zinc-900
    };
    variants = {
      dark = {
        bg = {
          root = "#27272a"; # Base dark background
          shift = "#3f3f46"; # Slightly lighter
          echo = "#52525b"; # Elevated
          fade = "#71717a"; # Highlight
        };

        fg = {
          root = "#71717a"; # Main text
          shift = "#52525b"; # Muted text
          echo = "#3f3f46"; # Subtle text
          fade = "#18181b"; # Faint text
        };

        red = {
          root = "#52525b"; # Accent
          shift = "#71717a";
          echo = "#3f3f46";
          fade = "#18181b";
        };

        black = {
          root = "#18181b"; # Deep black
          shift = "#27272a";
          echo = "#3f3f46";
          fade = "#52525b";
        };

        green = {
          root = "#3f3f46"; # Subtle green
          shift = "#52525b";
          echo = "#71717a";
          fade = "#27272a";
        };

        yellow = {
          root = "#71717a"; # Subtle yellow
          shift = "#52525b";
          echo = "#3f3f46";
          fade = "#18181b";
        };

        blue = {
          root = "#52525b"; # Subtle blue
          shift = "#71717a";
          echo = "#3f3f46";
          fade = "#18181b";
        };

        magenta = {
          root = "#3f3f46"; # Subtle magenta
          shift = "#52525b";
          echo = "#71717a";
          fade = "#27272a";
        };

        cyan = {
          root = "#71717a"; # Subtle cyan
          shift = "#52525b";
          echo = "#3f3f46";
          fade = "#18181b";
        };

        white = {
          root = "#27272a"; # Subtle white
          shift = "#3f3f46";
          echo = "#52525b";
          fade = "#71717a";
        };
      };

      light = {
        bg = {
          root = "#71717a"; # Light background
          shift = "#52525b";
          echo = "#3f3f46";
          fade = "#27272a";
        };

        fg = {
          root = "#27272a"; # Dark text
          shift = "#3f3f46";
          echo = "#52525b";
          fade = "#71717a";
        };

        red = {
          root = "#52525b"; # Accent
          shift = "#71717a";
          echo = "#3f3f46";
          fade = "#18181b";
        };

        black = {
          root = "#18181b"; # Deep black
          shift = "#27272a";
          echo = "#3f3f46";
          fade = "#52525b";
        };

        green = {
          root = "#3f3f46"; # Subtle green
          shift = "#52525b";
          echo = "#71717a";
          fade = "#27272a";
        };

        yellow = {
          root = "#71717a"; # Subtle yellow
          shift = "#52525b";
          echo = "#3f3f46";
          fade = "#18181b";
        };

        blue = {
          root = "#52525b"; # Subtle blue
          shift = "#71717a";
          echo = "#3f3f46";
          fade = "#18181b";
        };

        magenta = {
          root = "#3f3f46"; # Subtle magenta
          shift = "#52525b";
          echo = "#71717a";
          fade = "#27272a";
        };

        cyan = {
          root = "#71717a"; # Subtle cyan
          shift = "#52525b";
          echo = "#3f3f46";
          fade = "#18181b";
        };

        white = {
          root = "#27272a"; # Subtle white
          shift = "#3f3f46";
          echo = "#52525b";
          fade = "#71717a";
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
