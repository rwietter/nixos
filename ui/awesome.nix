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

        ------------------------------------------------------------------------
        -- Background
        ------------------------------------------------------------------------

        colors.bg_color = "${newTheme.tokens.bg.base}"
        colors.bg_2 = "${newTheme.tokens.bg.surface}"
        colors.bg_3 = "${newTheme.tokens.bg.highlight}"
        colors.bg_4 = "${newTheme.tokens.bg.highlight}"

        ------------------------------------------------------------------------
        -- Foreground
        ------------------------------------------------------------------------

        colors.foreground = "${newTheme.tokens.fg.base}"
        colors.emphasis = "${newTheme.tokens.fg.emphasis}"
        colors.subtle = "${newTheme.tokens.fg.subtle}"

        ------------------------------------------------------------------------
        -- Borders
        ------------------------------------------------------------------------

        colors.border = "${newTheme.tokens.border.normal}"
        colors.border_focus = "${newTheme.tokens.border.focus}"

        ------------------------------------------------------------------------
        -- State colors
        ------------------------------------------------------------------------

        colors.active = "${newTheme.tokens.state.active}"
        colors.urgent = "${newTheme.tokens.state.urgent}"
        colors.info = "${newTheme.tokens.state.info}"

        ------------------------------------------------------------------------
        -- Accent colors
        ------------------------------------------------------------------------

        colors.accent = "${newTheme.tokens.fg.base}"
        colors.accent_alt = "${newTheme.tokens.fg.emphasis}"

        ------------------------------------------------------------------------
        -- Base16 palette passthrough
        ------------------------------------------------------------------------

        colors.base00 = "${newTheme.tokens.palette.base00}"
        colors.base01 = "${newTheme.tokens.palette.base01}"
        colors.base02 = "${newTheme.tokens.palette.base02}"
        colors.base03 = "${newTheme.tokens.palette.base03}"

        colors.base04 = "${newTheme.tokens.palette.base04}"
        colors.base05 = "${newTheme.tokens.palette.base05}"
        colors.base06 = "${newTheme.tokens.palette.base06}"
        colors.base07 = "${newTheme.tokens.palette.base07}"

        colors.base08 = "${newTheme.tokens.palette.base08}"
        colors.base09 = "${newTheme.tokens.palette.base09}"
        colors.base0A = "${newTheme.tokens.palette.base0A}"
        colors.base0B = "${newTheme.tokens.palette.base0B}"

        colors.base0C = "${newTheme.tokens.palette.base0C}"
        colors.base0D = "${newTheme.tokens.palette.base0D}"
        colors.base0E = "${newTheme.tokens.palette.base0E}"
        colors.base0F = "${newTheme.tokens.palette.base0F}"

        ------------------------------------------------------------------------
        -- Legacy compatibility
        ------------------------------------------------------------------------

        colors.black = colors.bg_color
        colors.ext_white_bg = colors.foreground

        colors.red = colors.urgent
        colors.red_2 = colors.urgent
        colors.red_3 = colors.urgent
        colors.red_4 = colors.urgent
        colors.red_5 = colors.urgent

        colors.green = colors.active
        colors.green_2 = colors.active
        colors.green_3 = colors.active
        colors.green_4 = colors.active

        colors.accent_2 = colors.accent
        colors.accent_3 = colors.accent
        colors.accent_4 = colors.accent

        colors.purple = colors.accent_alt

        return colors
      '';
      force = true;
    };
  };
}
