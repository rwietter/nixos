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
    nixosConfigurations = {
      rwietter = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs vars mylib theme; };
        modules = [
          ./configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = false;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs vars mylib theme; };
            home-manager.users.rwietter = import ./orbit/home.nix;
          }
        ];
      };
    };

    homeConfigurations = {
      rwietter = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { inherit system; };
        extraSpecialArgs = { inherit inputs vars mylib theme; };
        modules = [
          ./orbit/home.nix
          ./forge
          ./shell
          ./spark
        ];
      };
    };
  };
}
