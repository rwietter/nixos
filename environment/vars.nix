{
  appearance = {
    colorscheme = "argentinian";  # Or "vesper", "argentinian", "eva", etc.
    theme = "light"; # Or "light", "dark", "dim", etc.
    gtk = {
      theme = {
        name = "Qogir-dark";
        package = "qogir-icon-theme";
      };
      iconTheme = {
        name = "Qogir-dark";
        package = "qogir-icon-theme";
      };
      cursor = {
        name = "Quintom_Snow";
        package = "quintom-cursor-theme";
      };
    };
  };
  git = {
    username = "rwietter";
    fullname = "Mauricio Witter";
    email = "rwietter@zohomail.com";
  };
  os = {
    hostname = "rwietter";
    homeDirectory = "/home/rwietter";
    desktop = "awesome";
    term = "wezterm"; # Or "alacritty", "kitty", "st", etc.
    shell = "fish"; # Or "bash", "zsh", "starship" etc.
    font = {
      sans = "";
      serif = "";
      mono = "Geist Mono";
    };
  };
}