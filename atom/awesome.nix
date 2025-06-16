{
  lib,
  theme,
  vars,
  ...
}:

lib.mkIf (vars.os.desktop == "awesome") {
  xdg.configFile = lib.mkForce {
    # "awesome" = {
    #   source = ../repo/config/awesome;
    #   recursive = true;
    #   force = true;
    # };
    "awesome/theme/colors/nixos-generated.lua" = {
      text = ''
        local colors = {}

        colors.bg_color = "${theme.scheme.variants."${vars.appearance.theme}".bg.root}"
        colors.bg_2 = "${theme.scheme.variants."${vars.appearance.theme}".bg.shift}"
        colors.bg_3 = "${theme.scheme.variants."${vars.appearance.theme}".bg.echo}"
        colors.bg_4 = "${theme.scheme.variants."${vars.appearance.theme}".bg.fade}"

        colors.black = "${theme.scheme.variants."${vars.appearance.theme}".bg.root}"
        colors.ext_white_bg = "${theme.scheme.variants."${vars.appearance.theme}".white.root}"

        colors.foreground = "${theme.scheme.variants."${vars.appearance.theme}".fg.root}"
        colors.emphasis = "${theme.scheme.variants."${vars.appearance.theme}".fg.echo}"

        colors.green = "${theme.scheme.variants."${vars.appearance.theme}".cyan.root}"
        colors.green_2 = "${theme.scheme.variants."${vars.appearance.theme}".cyan.shift}"
        colors.green_3 = "${theme.scheme.variants."${vars.appearance.theme}".cyan.echo}"
        colors.green_4 = "${theme.scheme.variants."${vars.appearance.theme}".cyan.fade}"

        colors.red = "${theme.scheme.variants."${vars.appearance.theme}".red.root}"
        colors.red_2 = "${theme.scheme.variants."${vars.appearance.theme}".red.shift}"
        colors.red_3 = "${theme.scheme.variants."${vars.appearance.theme}".red.echo}"
        colors.red_4 = "${theme.scheme.variants."${vars.appearance.theme}".red.fade}"
        colors.red_5 = "${theme.scheme.variants."${vars.appearance.theme}".red.fade}"

        colors.accent = "${theme.scheme.variants."${vars.appearance.theme}".yellow.root}"
        colors.accent_2 = "${theme.scheme.variants."${vars.appearance.theme}".yellow.shift}"
        colors.accent_3 = "${theme.scheme.variants."${vars.appearance.theme}".yellow.echo}"
        colors.accent_4 = "${theme.scheme.variants."${vars.appearance.theme}".yellow.fade}"

        colors.purple = "${theme.scheme.variants."${vars.appearance.theme}".magenta.root}"

        return colors
      '';
      force = true;
    };
  };
}
