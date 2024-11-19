{ vars, lib, theme, ... }:

let
  colors = theme.scheme.variants."${vars.appearance.theme}";
in
# Use lastest version; fixed textures issue
# nix profile install 'github:wez/wezterm/main?dir=nix'
lib.mkIf (vars.os.term == "wezterm") {
  programs.wezterm = {
    enable = false; # [BUG]: textures broken
  };

  xdg.configFile = lib.mkForce {
    "wezterm/theme.lua" = {
      force = true;
      text = ''
        return {
          background = "${colors.bg.root}",
          foreground = "${colors.fg.shift}",
          cursor_bg =  "${colors.fg.shift}",
          cursor_fg = "${colors.fg.shift}",
          cursor_border = "${colors.fg.root}",
          selection_bg = "${colors.fg.fade}",
          selection_fg = "${colors.bg.fade}",
          scrollbar_thumb = "${colors.bg.root}",
          split = "${colors.bg.root}",
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
            "${colors.black.fade}",
            "${colors.red.fade}",
            "${colors.green.fade}",
            "${colors.yellow.fade}",
            "${colors.blue.fade}",
            "${colors.magenta.fade}",
            "${colors.cyan.fade}",
            "${colors.white.fade}",
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
