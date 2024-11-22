{
  appearance = {
    colorscheme = "catppuccin-mocha"; # Or "argentinian", "catppuccin-mocha".
    theme = "dark"; # Or "light", "dark", "dim".
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
    prompt = "starship"; # Or "default", "hydro", "powerline", "starship".
    oom = true; # Enable process killer
    font = {
      sans = "Atkinson Hyperlegible";
      serif = "SpaceGrotesk";
      mono = "FantasqueSansM Nerd Font";
    };
  };
}
