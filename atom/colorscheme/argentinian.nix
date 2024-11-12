let 
  bg_midnight_blue = {
    bg.root = "#11111b";
    bg.shift = "#14141F";
    bg.echo = "#161624";
    bg.fade = "#191928";
  };

  bg_jet_black = {
    bg.root = "#101010";
    bg.shift = "#151515";
    bg.echo = "#1A1A1A";
    bg.fade = "#1F1F1F";
  };

  bg_rich_black = {
    bg.root = "#131C26";
    bg.shift = "#141E29";
    bg.echo = "#192331";
    bg.fade = "#1D2A39";
  };

  bg_white = {
    bg.root = "#FEFEFF";
    bg.shift = "#F8F8F8";
    bg.echo = "#EBEBEB";
    bg.fade = "#E4E4E4";
  };

  bg_ice = {
    bg.root = "#EEECF5";
    bg.shift = "#F0EEF6";
    bg.echo = "#F2F1F7";
    bg.fade = "#F4F3F8";
  };
in
{
  scheme = {
    colors = {
      primary = "#885DF8";
      bg = "#11111b";
      fg = "#FEFEFF";
      black = "#191928";
      red = "#FA6296";
      green = "#45F5B7";
      yellow = "#F7B244";
      blue = "#45A6F6";
      magenta = "#885DF8";
      cyan = "#88c0d0";
      white = "#FEFEFF";
    };
    variants = {
      dark = bg_jet_black // {
        fg.root = "#EEECF5";
        fg.shift = "#F0EEF6";
        fg.echo = "#F2F1F7";
        fg.fade = "#F4F3F8";

        red.root = "#F793B2";
        red.shift = "#F7A5C1";
        red.echo = "#F7B7D0";
        red.fade = "#F7C9E0";

        black.root = "#101010";
        black.shift = "#151515";
        black.echo = "#1A1A1A";
        black.fade = "#1F1F1F";

        green.root = "#93F7D1";
        green.shift = "#A5F7D8";
        green.echo = "#B7F7E0";
        green.fade = "#C9F7E8";

        yellow.root = "#A8969C";
        yellow.shift = "#AF9EA4";
        yellow.echo = "#B6A7AC";
        yellow.fade = "#BCAFB3";

        blue.root = "#93B2F7";
        blue.shift = "#A5C1F7";
        blue.echo = "#B7D0F7";
        blue.fade = "#C9E0F7";

        magenta.root = "#946CF9";
        magenta.shift = "#9B76FA";
        magenta.echo = "#AA89FB";
        magenta.fade = "#B193FB";

        cyan.root = "#88c0d0";
        cyan.shift = "#99c8d8";
        cyan.echo = "#aacfe0";
        cyan.fade = "#bbd7e8";

        white.root = "#EEECF5";
        white.shift = "#F0EEF6";
        white.echo = "#F2F1F7";
        white.fade = "#F4F3F8";
      };

      light = bg_ice // {
        fg.root = "#626880";
        fg.shift = "#727a90";
        fg.echo = "#828a9f";
        fg.fade = "#929aa5";

        black.root = "#101010";
        black.shift = "#151515";
        black.echo = "#1A1A1A";
        black.fade = "#1F1F1F";

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