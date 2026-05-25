{
  lib,
  newTheme,
  vars,
  ...
}:

lib.mkIf (vars.os.desktop == "awesome") {
  xdg.configFile = lib.mkForce {
    "awesome/theme/colors/nixos-generated.lua" = {
      text = ''
        local colors = {}

        -- background hierarchy
        colors.bg_color = "${newTheme.tokens.bg.base}"
        colors.bg_2 = "${newTheme.tokens.bg.surface}"
        colors.bg_3 = "${newTheme.tokens.bg.highlight}"
        colors.bg_4 = "${newTheme.tokens.bg.highlight}"

        -- foreground hierarchy
        colors.foreground = "${newTheme.tokens.fg.base}"
        colors.emphasis = "${newTheme.tokens.fg.emphasis}"
        colors.dim = "${newTheme.tokens.fg.subtle}"

        -- structural colors
        colors.border = "${newTheme.tokens.border}"

        -- semantic feedback
        colors.success = "${newTheme.tokens.feedback.success}"
        colors.warning = "${newTheme.tokens.feedback.warning}"
        colors.danger = "${newTheme.tokens.feedback.danger}"
        colors.info = "${newTheme.tokens.feedback.info}"

        -- raw palette access
        colors.red = "${newTheme.tokens.color.red}"
        colors.orange = "${newTheme.tokens.color.orange}"
        colors.yellow = "${newTheme.tokens.color.yellow}"
        colors.green = "${newTheme.tokens.color.green}"
        colors.cyan = "${newTheme.tokens.color.cyan}"
        colors.blue = "${newTheme.tokens.color.blue}"
        colors.magenta = "${newTheme.tokens.color.magenta}"
        colors.brown = "${newTheme.tokens.color.brown}"

        -- compatibility aliases
        colors.black = "${newTheme.tokens.bg.base}"
        colors.ext_white_bg = "${newTheme.tokens.fg.base}"

        colors.green_2 = "${newTheme.tokens.color.green}"
        colors.green_3 = "${newTheme.tokens.color.green}"
        colors.green_4 = "${newTheme.tokens.color.green}"

        colors.red_2 = "${newTheme.tokens.color.red}"
        colors.red_3 = "${newTheme.tokens.color.red}"
        colors.red_4 = "${newTheme.tokens.color.red}"
        colors.red_5 = "${newTheme.tokens.color.red}"

        colors.accent = "${newTheme.tokens.feedback.warning}"
        colors.accent_2 = "${newTheme.tokens.feedback.warning}"
        colors.accent_3 = "${newTheme.tokens.feedback.warning}"
        colors.accent_4 = "${newTheme.tokens.feedback.warning}"

        colors.purple = "${newTheme.tokens.color.magenta}"

        return colors
      '';
      force = true;
    };
  };
}
