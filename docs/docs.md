# NixOS ⚡

## flake.nix

```nix
{
  description = "⚡ Voltage — rwietter's NixOS settings";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-old.url = "github:nixos/nixpkgs/nixos-23.11";
    nixos.url = "github:nixos/nixpkgs/nixos-24.05";
    master.url = "github:nixos/nixpkgs";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = import inputs.nixpkgs { inherit system; };
    lib = pkgs.lib;
    mylib = import ./lib { inherit lib builtins; };
    vars = import ./environment/vars.nix;
    theme = (import ./atom/colorscheme { inherit mylib vars; }).theme;
  in {
    # NixOS home-manager integration
    nixosConfigurations = {
      rwietter = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs vars mylib theme; };
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "backup";
              extraSpecialArgs = { inherit inputs vars mylib theme; };
              users.rwietter = { config, ... }: {
                home = {
                  username = vars.os.hostname;
                  homeDirectory = vars.os.homeDirectory;
                  stateVersion = "25.05";
                };
                imports = [
                  ./orbit/home.nix
                  ./spark
                  ./scroll
                  ./shell
                  ./forge
                  ./atom
                ];
              };
            };
          }
        ];
      };
    };
    # Independent home-manager configuration
    homeConfigurations = {
      rwietter = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { inherit system; };
        extraSpecialArgs = { inherit inputs vars mylib theme; };
        modules = [
          ./orbit/home.nix
          ./spark
          ./atom
          ./scroll
          ./shell
          ./forge
        ];
      };
    };
  };
}
```

---

# Command Line Interface

## Rebuild

```bash
sudo nixos-rebuild switch --flake /etc/nixos/flake.nix#rwietter

# or

sudo nixos-rebuild switch --flake .#rwietter
```

```bash
home-manager switch --flake .#rwietter
```

## Install unstable packages (no-flakes version)

```bash
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs-unstable
nix-channel --update
```

## Get SHA256 Github

```bash
nix-shell -p nix-prefetch-git --extra-experimental-features 'nix-command flakes'
nix-prefetch-git https://github.com/awesomeWM/awesome --rev fcd23a7478b38788e13849f76190e60338ba9fdc
```

or use `nurl`:

```bash
nurl https://github.com/awesomeWM/awesome
```

## Garbage collection

```bash
sudo nix-collect-garbage
sudo nix-collect-garbage -d
```

## Remove unused packages

```bash
nix-store --gc
```

## Home Manager switch

```bash
home-manager switch
```

## Upgrade NixOS

```bash
# Update the flake.lock pointing to the latest nixpkgs
nix flake update

# Rebuild the system with the updated flake
sudo nixos-rebuild switch --flake .#rwietter
```

---

# Otimizações

- [Storage_optimization](https://nixos.wiki/wiki/Storage_optimization)
- [NixOS Book](https://nixos-and-flakes.thiscute.world/nixos-with-flakes/update-the-system)
