{
  appearance = {
    colorscheme = "hypfrost"; # Or "amarena", "catppuccin-macchiato", "moonstars", "everforest", "umbrosus", "ephemeral",  "lovelace", "manta", "skyall", "aphelion", "hypfrost",
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
    prompt = "hydro"; # Or "default", "hydro", "powerline", "starship".
    oom = true; # Enable process killer
    font = {
      sans = "Atkinson Hyperlegible";
      serif = "SpaceGrotesk";
      mono = "IntoneMono Nerd Font"; # FantasqueSansM Nerd Font, MesloLGS NF
    };
  };
}
