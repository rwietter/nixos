{ vars, lib, theme, ... }:

# Use lastest version; fixed textures issue
# nix profile install 'github:wez/wezterm/main?dir=nix'
with lib; mkIf (vars.os.term == "wezterm") {
  programs.wezterm = {
    enable = false; # [BUG]: textures broken
    extraConfig = ''
      ${fileContents ../repo/config/wezterm/wezterm.lua}
    '';
  };

  xdg.configFile."wezterm/theme.lua".text = ''
    return {
      background = "${theme.scheme.colors.bg}",
      foreground = "${theme.scheme.colors.fg}",
      cursor_bg = "${theme.scheme.colors.fg}",
      cursor_fg = "${theme.scheme.colors.black}",
      cursor_border = "${theme.scheme.colors.fg}",
      selection_fg = "${theme.scheme.colors.black}",
      selection_bg = "${theme.scheme.colors.fg}",
      scrollbar_thumb = "${theme.scheme.colors.fg}",
      split = "${theme.scheme.colors.white}",
      ansi = {
        "${theme.scheme.colors.bg}",
        "${theme.scheme.colors.red}",
        "${theme.scheme.colors.green}",
        "${theme.scheme.colors.yellow}",
        "${theme.scheme.colors.blue}",
        "${theme.scheme.colors.magenta}",
        "${theme.scheme.colors.cyan}",
        "${theme.scheme.colors.fg}",
      },
      brights = {
        "${theme.scheme.colors.white}",
        "${theme.scheme.colors.red}",
        "${theme.scheme.colors.green}",
        "${theme.scheme.colors.yellow}",
        "${theme.scheme.colors.blue}",
        "${theme.scheme.colors.magenta}",
        "${theme.scheme.colors.cyan}",
        "${theme.scheme.colors.bg}",
      },
    }
  '';
}
