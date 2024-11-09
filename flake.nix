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
        inherit system;
        specialArgs = { inherit inputs vars mylib theme; };
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit inputs vars mylib theme; };
              users.rwietter = { config, ... }: {
                home = {
                  username = "rwietter";
                  homeDirectory = "/home/rwietter";
                  stateVersion = "24.05";
                  enableNixpkgsReleaseCheck = false;
                };

                # Explicitly enable home-manager
                programs.home-manager.enable = true;

                imports = [
                  ./orbit/home.nix
                  ./forge
                  ./shell
                  ./spark
                  ./atom
                ];

                # Ensure symlinks are created
                # home.activation = {
                #   linkGeneration = config.lib.dag.entryAfter ["writeBoundary"] ''
                #     $DRY_RUN_CMD ${pkgs.fish}/bin/fish -c "source ~/.config/fish/config.fish"
                #   '';
                # };
              };
            };
          }
        ];
      };
    };
  };
}