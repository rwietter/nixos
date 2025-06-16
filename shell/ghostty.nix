{ lib, vars, ... }:

{
  programs.ghostty = {
    enable = true;
    themes = {
      catppuccin-mocha = {
        background = "${theme.scheme.variants."${vars.appearance.theme}".bg.root}";
        cursor-color = "${theme.scheme.variants."${vars.appearance.theme}".fg.root}";
        foreground = "${theme.scheme.variants."${vars.appearance.theme}".fg.root}";
        palette = [
          "0=${theme.scheme.variants."${vars.appearance.theme}".bg.root}"
          "1=${theme.scheme.variants."${vars.appearance.theme}".red.root}"
          "2=${theme.scheme.variants."${vars.appearance.theme}".green.root}"
          "3=${theme.scheme.variants."${vars.appearance.theme}".yellow.root}"
          "4=${theme.scheme.variants."${vars.appearance.theme}".blue.root}"
          "5=${theme.scheme.variants."${vars.appearance.theme}".magenta.root}"
          "6=${theme.scheme.variants."${vars.appearance.theme}".cyan.root}"
          "7=${theme.scheme.variants."${vars.appearance.theme}".fg.root}"
          "8=${theme.scheme.variants."${vars.appearance.theme}".bg.fade}"
          "9=${theme.scheme.variants."${vars.appearance.theme}".red.fade}"
          "10=${theme.scheme.variants."${vars.appearance.theme}".green.fade}"
          "11=${theme.scheme.variants."${vars.appearance.theme}".yellow.fade}"
          "12=${theme.scheme.variants."${vars.appearance.theme}".blue.fade}"
          "13=${theme.scheme.variants."${vars.appearance.theme}".magenta.fade}"
          "14=${theme.scheme.variants."${vars.appearance.theme}".cyan.fade}"
          "15=${theme.scheme.variants."${vars.appearance.theme}".fg.fade}"
        ];
        selection-background = "${theme.scheme.variants."${vars.appearance.theme}".bg.shift}";
        selection-foreground = "${theme.scheme.variants."${vars.appearance.theme}".fg.shift}";
      };
    };
  };

  # xdg.configFile."alacritty/alacritty.yml".text = ''
  #   ${lib.fileContents ../repo/config/alacritty/alacritty.yml}
  # '';
}
