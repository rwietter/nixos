{
  scheme = {
    colors = {
      primary = "#B295DA";
      bg = "#101010";
      fg = "#EEECF5";
      black = "#787D93";
      red = "#febbcc";
      green = "#C5DEDD";
      yellow = "#fec89a";
      blue = "#b6ccfe";
      magenta = "#B295DA";
      cyan = "#E3FAFF";
      white = "#EEECF5";
    };
    variants = {
      dark = {
        bg.root = "#101010";
        bg.shift = "#151515";
        bg.echo = "#1A1A1A";
        bg.fade = "#1F1F1F";

        fg.root = "#EEECF5";
        fg.shift = "#F0EEF6";
        fg.echo = "#F2F1F7";
        fg.fade = "#F4F3F8";

        red.root = "#febbcc";
        red.shift = "#ffcccc";
        red.echo = "#ffddcc";
        red.fade = "#ffeecc";

        black.root = "#787D93";
        black.shift = "#8D92A5";
        black.echo = "#8D92A5";
        black.fade = "#A3A7B8";

        green.root = "#C5DEDD";
        green.shift = "#CEE2E1";
        green.echo = "#D8E6E6";
        green.fade = "#E1EAEA";

        yellow.root = "#fec89a";
        yellow.shift = "#ffd7ba";
        yellow.echo = "#ffe5d9";
        yellow.fade = "#fff4f8";

        blue.root = "#b6ccfe";
        blue.shift = "#c1d3fe";
        blue.echo = "#ccdbfd";
        blue.fade = "#d7e3fc";

        magenta.root = "#B295DA";
        magenta.shift = "#BAA1DC";
        magenta.echo = "#C1ACDE";
        magenta.fade = "#C9B8E0";

        cyan.root = "#E3FAFF";
        cyan.shift = "#ECFCFF";
        cyan.echo = "#F1FDFF";
        cyan.fade = "#F6FDFF";

        white.root = "#EEECF5";
        white.shift = "#F0EEF6";
        white.echo = "#F2F1F7";
        white.fade = "#F4F3F8";
      };

      light = {
        bg.root = "#FEFEFF";
        bg.shift = "#F8F8F8";
        bg.echo = "#EBEBEB";
        bg.fade = "#E4E4E4";

        fg.root = "#626880";
        fg.shift = "#727a90";
        fg.echo = "#828a9f";
        fg.fade = "#929aa5";

        black.root = "#1A1A1A";
        black.shift = "#1F1F1F";
        black.echo = "#242424";
        black.fade = "#292929";

        red.root = "#FA76A4";
        red.shift = "#FA7DA8";
        red.echo = "#FA83AD";
        red.fade = "#FB8AB1";

        green.root = "#2A9292";
        green.shift = "#2F9B9B";
        green.echo = "#33A4A4";
        green.fade = "#38AEAE";

        yellow.root = "#937E85";
        yellow.shift = "#968289";
        yellow.echo = "#9A868C";
        yellow.fade = "#9D8A90";

        blue.root = "#45A6F6";
        blue.shift = "#4CA9F6";
        blue.echo = "#52ACF7";
        blue.fade = "#59B0F7";

        magenta.root = "#7645F7";
        magenta.shift = "#7B4CF7";
        magenta.echo = "#8052F8";
        magenta.fade = "#8559F8";

        cyan.root = "#88c0d0";
        cyan.shift = "#99c8d8";
        cyan.echo = "#aacfe0";
        cyan.fade = "#bbd7e8";

        white.root = "#EEECF5";
        white.shift = "#F0EEF6";
        white.echo = "#F2F1F7";
        white.fade = "#F4F3F8";
      };
    };
  };

  gtk = {
    dark = {
      theme = {
        name = "Layan-Dark";
        package = "layan-gtk-theme";
      };
      iconTheme = {
        name = "BeautySolar"; # Qogir-dark
        package = "qogir-icon-theme"; # qogir-icon-theme
      };
      cursor = {
        name = "Quintom_Snow";
        package = "quintom-cursor-theme";
      };
    };
    light = {
      theme = {
        name = "Layan-Light";
        package = "layan-gtk-theme";
      };
      iconTheme = {
        name = "BeautySolar"; # Qogir-light
        package = "qogir-icon-theme"; # qogir-icon-theme
      };
      cursor = {
        name = "Quintom_Snow";
        package = "quintom-cursor-theme";
      };
    };
  };
}
