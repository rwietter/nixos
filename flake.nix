{
  description = "rwietter's NixOS settings";

  inputs = {
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable"; # delivering the latest tested updates on a rolling basis
    unstable.url = "github:nixos/nixpkgs/nixos-unstable"; # latest unstable NixOS release
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05"; # stable release of NixOS 25.05
    master.url = "github:nixos/nixpkgs";

    browser-previews = {
      url = "github:nix-community/browser-previews";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs"; # use the same nixpkgs as the system
    };
  };

  outputs =
    {
      nixpkgs,
      unstable,
      nixpkgs-unstable,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      mylib = import ./lib { inherit lib builtins; };
      vars = import ./environment/vars.nix;
      theme = (import ./ui/colorscheme { inherit mylib vars; }).theme;
      pkgs = import inputs.nixpkgs {
        inherit system;
        config.allowUnfree = true;
        overlays = [
          (import ./overlays/sem.nix)
        ];
        config.permittedInsecurePackages = [
          "beekeeper-studio-5.1.5"
        ];
      };
      unstable = import inputs.unstable {
        inherit system;
        config.allowUnfree = true;
      };
      nixpkgs-unstable = import inputs.nixpkgs-unstable {
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
              unstable
              nixpkgs-unstable
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
                    nixpkgs-unstable
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
                      ./homemanager/home.nix
                      ./services
                      ./apps
                      ./shell
                      ./ui
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
              nixpkgs-unstable
              ;
          };
          modules = [
            ./homemanager/home.nix
            ./services
            ./ui
            ./apps
            ./shell
          ];
        };
      };
    };
}
