{
  appearance = {
    colorscheme = "synthwave-dream"; # "eink", "everforest", "hypfrost", "zen", "monochrome", "serendipity-midnight", "amarena-pastel", "synthwave-dream"
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
