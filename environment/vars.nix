{
  appearance = {
    colorscheme = "amarena-pastel"; # "eink", "everforest", "hypfrost", "monochrome", "amarena-pastel"
		palette = "grayscale"; # "eink", "everforest", "grayscale", "monochrome", "amarena-pastel"
		mode = "dark"; # "light", "dark"
    theme = "dark"; # Or "light", "dark".
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
    term = "wezterm"; # Or "alacritty", "kitty", "st".
    shell = "fish"; # Or "bash", "zsh", "starship" etc.
    prompt = "hydro"; # Or "default", "hydro", "powerline", "starship".
    oom = true; # Enable process killer
    font = {
      sans = "Atkinson Hyperlegible";
      serif = "SpaceGrotesk";
      mono = "AnonymicePro Nerd Font Mono"; # FantasqueSansM Nerd Font, MesloLGS NF
    };
  };
}
