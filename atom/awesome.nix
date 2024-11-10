{ lib, theme, vars, ...}:

with lib; mkIf (vars.os.desktop == "awesome") {
  xdg.configFile = lib.mkForce {
    "awesome/theme/colors/dark.lua" = {
      text = ''
        local colors = {}

        colors.bg_color = "${theme.scheme.colors.bg}"
        colors.bg_2 = "${theme.scheme.colors.bg}" .. "99"
        colors.bg_3 = "${theme.scheme.colors.bg}" .. "66"
        colors.bg_4 = "${theme.scheme.colors.bg}" .. "33"

        colors.black = "${theme.scheme.colors.bg}"
        colors.ext_white_bg = "${theme.scheme.colors.fg}"

        colors.foreground = "${theme.scheme.colors.fg}"
        colors.emphasis = "${theme.scheme.colors.fg}" .. "99"

        colors.green = "${theme.scheme.colors.green}
        colors.green_2 = "${theme.scheme.colors.green}" .. "99"
        colors.green_3 = "${theme.scheme.colors.green}" .. "66"
        colors.green_4 = "${theme.scheme.colors.green}" .. "33"

        colors.red = ${theme.scheme.colors.red}
        colors.red_2 = ${theme.scheme.colors.red}" .. "99"
        colors.red_3 = ${theme.scheme.colors.red}" .. "66"
        colors.red_4 = ${theme.scheme.colors.red}" .. "33"
        colors.red_5 = ${theme.scheme.colors.red}" .. "20"

        colors.accent = ${theme.scheme.colors.cyan}
        colors.accent_2 = ${theme.scheme.colors.cyan}" .. "99"
        colors.accent_3 = ${theme.scheme.colors.cyan}" .. "66"
        colors.accent_4 = ${theme.scheme.colors.cyan}" .. "33"

        colors.purple = ${theme.scheme.colors.primary}

        return colors
      '';
    };
  };
}