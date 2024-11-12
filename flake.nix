{
  description = "rwietter's NixOS settings";

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
                  stateVersion = "24.05";
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