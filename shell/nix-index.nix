{ pkgs, ... }:
{
  programs.nix-index = {
    enable = true;
    package = pkgs.nix-index;
    enableFishIntegration = true;
  };
  programs.command-not-found.enable = false;
  programs.fish.interactiveShellInit = ''
    source ${pkgs.nix-index}/etc/profile.d/command-not-found.sh
  '';
}
