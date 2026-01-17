{
  vars,
  lib,
  theme,
  ...
}:

let
  colors = theme.scheme.variants."${vars.appearance.theme}";
in
# Use lastest version; fixed textures issue
# nix profile install 'github:wez/wezterm/main?dir=nix'
 {
  programs.wezterm = {
    enable = false; # [BUG]: textures broken
  };

  xdg.configFile = lib.mkForce {
    "wezterm/theme.lua" = {
      force = true;
      text = ''
        return {
          background = "${colors.bg.root}",
          foreground = "${colors.fg.root}",
          cursor_bg =  "${colors.fg.root}",
          cursor_fg = "${colors.fg.shift}",
          cursor_border = "${colors.bg.root}",
          selection_bg = "${colors.fg.root}",
          selection_fg = "${colors.bg.root}",
          scrollbar_thumb = "${colors.fg.shift}",
          split = "${colors.fg.shift}",
          ansi = {
            "${colors.black.root}",
            "${colors.red.root}",
            "${colors.green.root}",
            "${colors.yellow.root}",
            "${colors.blue.root}",
            "${colors.magenta.root}",
            "${colors.cyan.root}",
            "${colors.white.root}",
          },
          brights = {
            "${colors.black.shift}",
            "${colors.red.shift}",
            "${colors.green.shift}",
            "${colors.yellow.shift}",
            "${colors.blue.shift}",
            "${colors.magenta.shift}",
            "${colors.cyan.shift}",
            "${colors.white.shift}",
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
