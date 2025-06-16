{ ... }:

{
  imports = [
    ./fish.nix # A shell and command language interpreter
    ./wezterm.nix # A GPU-accelerated terminal emulator
    ./bash.nix # A shell and command language interpreter
    ./alacritty.nix # A cross-platform, GPU-accelerated terminal emulator
    ./starship.nix # Prompt shell
    ./direnv.nix # Load and unload environment variables depending on the current directory.
    ./devenv.nix # Composable Developer Environments using Nix
    ./ghostty.nix # Fast, native, feature-rich terminal emulator pushing modern features
    # ./zsh.nix
  ];
}
