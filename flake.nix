{
  description = "rwietter's NixOS settings";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    master.url = "github:nixos/nixpkgs";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      unstable,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      mylib = import ./lib { inherit lib builtins; };
      vars = import ./environment/vars.nix;
      theme = (import ./atom/colorscheme { inherit mylib vars; }).theme;
      pkgs = import inputs.nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      unstable = import inputs.unstable {
        inherit system;
        config.allowUnfree = true;
      };
      lib = pkgs.lib;
    in
    {
      # NixOS home-manager integration
      nixosConfigurations = {
        rwietter = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit
              inputs
              vars
              mylib
              theme
              pkgs
              unstable
              ;
          };
          modules = [
            ./configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                backupFileExtension = "bkp";
                extraSpecialArgs = {
                  inherit
                    inputs
                    vars
                    mylib
                    theme
                    pkgs
                    unstable
                    ;
                };
                users.rwietter =
                  { config, ... }:
                  {
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
          extraSpecialArgs = {
            inherit
              inputs
              vars
              mylib
              theme
              pkgs
              unstable
              ;
          };
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
