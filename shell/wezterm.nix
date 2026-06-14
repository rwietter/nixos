{
  lib,
  newTheme,
  ...
}:

let
  t = newTheme.tokens;
  p = t.palette;
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
          split = "${t.border.normal}",

          ansi = {
            "${p.base00}",
            "${p.base08}",
            "${p.base0B}",
            "${p.base0A}",
            "${p.base0D}",
            "${p.base0E}",
            "${p.base0C}",
            "${p.base05}",
          },

          brights = {
            "${p.base03}",
            "${p.base08}",
            "${p.base0B}",
            "${p.base0A}",
            "${p.base0D}",
            "${p.base0E}",
            "${p.base0C}",
            "${p.base07}",
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
