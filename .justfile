default:
  just --list

make:
  home-manager -b backup switch --flake .#rwietter |& nom
  notify-send "NixOS configuration updated"

rebuild:
  sudo nixos-rebuild switch --flake .#rwietter
  notify-send "NixOS configuration rebuilt"

update:
  sudo nix-channel --update && nix flake update nixpkgs && home-manager -b backup switch --flake .#rwietter
  notify-send "NixOS configuration updated"

optimize:
  nix-collect-garbage -d && sudo nix-collect-garbage -d && nix-env --delete-generations +3d && nix-store --gc && nix-store --optimize
  notify-send "NixOS configuration optimized and cleaned up"