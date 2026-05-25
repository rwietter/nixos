{
  lib,
  newTheme,
  ...
}:

let
  t = newTheme.tokens;
in {
  programs.wezterm = {
    enable = false;
  };

  xdg.configFile = lib.mkForce {
    "wezterm/theme.lua" = {
      force = true;

      text = ''
        return {
          foreground = "${t.fg.base}",
          background = "${t.bg.base}",

          cursor_bg = "${t.fg.base}",
          cursor_fg = "${t.bg.base}",
          cursor_border = "${t.fg.base}",

          selection_bg = "${t.bg.highlight}",
          selection_fg = "${t.fg.emphasis}",

          scrollbar_thumb = "${t.bg.surface}",
          split = "${t.border}",

          ansi = {
            "${t.color.black}",
            "${t.color.red}",
            "${t.color.green}",
            "${t.color.yellow}",
            "${t.color.blue}",
            "${t.color.magenta}",
            "${t.color.cyan}",
            "${t.fg.base}",
          },

          brights = {
            "${t.fg.subtle}",
            "${t.color.red}",
            "${t.color.green}",
            "${t.color.yellow}",
            "${t.color.blue}",
            "${t.color.magenta}",
            "${t.color.cyan}",
            "${t.color.white}",
          },
        }
      '';
    };

    "wezterm/wezterm.lua" = {
      text = ''
        ${lib.fileContents ../repo/config/wezterm/wezterm.lua}
      '';

      force = true;
    };
  };
}
