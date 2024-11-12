{ vars, lib, theme, ... }:

# Use lastest version; fixed textures issue
# nix profile install 'github:wez/wezterm/main?dir=nix'
with lib; mkIf (vars.os.term == "wezterm") {
  programs.wezterm = {
    enable = false; # [BUG]: textures broken
  };

  xdg.configFile = lib.mkForce {
    "wezterm/theme.lua" = {
      force = true;
      text = ''
        return {
          background = "${theme.scheme.variants."${vars.appearance.theme}".bg.root}",
          foreground = "${theme.scheme.variants."${vars.appearance.theme}".fg.echo}",
          cursor_bg =  "${theme.scheme.variants."${vars.appearance.theme}".fg.fade}",
          cursor_fg = "${theme.scheme.variants."${vars.appearance.theme}".bg.root}",
          cursor_border = "${theme.scheme.variants."${vars.appearance.theme}".fg.root}",
          selection_bg = "${theme.scheme.variants."${vars.appearance.theme}".fg.fade}",
          selection_fg = "${theme.scheme.variants."${vars.appearance.theme}".bg.fade}",
          scrollbar_thumb = "${theme.scheme.variants."${vars.appearance.theme}".bg.root}",
          split = "${theme.scheme.variants."${vars.appearance.theme}".bg.root}",
          ansi = {
            "${theme.scheme.variants."${vars.appearance.theme}".bg.root}",
            "${theme.scheme.variants."${vars.appearance.theme}".red.root}",
            "${theme.scheme.variants."${vars.appearance.theme}".green.root}",
            "${theme.scheme.variants."${vars.appearance.theme}".yellow.root}",
            "${theme.scheme.variants."${vars.appearance.theme}".blue.root}",
            "${theme.scheme.variants."${vars.appearance.theme}".magenta.root}",
            "${theme.scheme.variants."${vars.appearance.theme}".cyan.root}",
            "${theme.scheme.variants."${vars.appearance.theme}".fg.root}",
          },
          brights = {
            "${theme.scheme.variants."${vars.appearance.theme}".fg.root}",
            "${theme.scheme.variants."${vars.appearance.theme}".red.fade}",
            "${theme.scheme.variants."${vars.appearance.theme}".green.fade}",
            "${theme.scheme.variants."${vars.appearance.theme}".yellow.fade}",
            "${theme.scheme.variants."${vars.appearance.theme}".blue.fade}",
            "${theme.scheme.variants."${vars.appearance.theme}".magenta.fade}",
            "${theme.scheme.variants."${vars.appearance.theme}".cyan.fade}",
            "${theme.scheme.variants."${vars.appearance.theme}".bg.root}",
          },
        }
      '';
    };
    
    "wezterm/wezterm.lua" = {
      text = ''
        ${fileContents ../repo/config/wezterm/wezterm.lua}
      '';
      force = true;
    };
  };
}
