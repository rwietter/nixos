# Estrutura Modular NixOS - ⚡ Voltage

```
voltage/
├── flake.nix
├── flake.lock
├── README.md
└── src
    ├── sys            # Configurações essenciais do sistema
    │   ├── default.nix
    │   ├── boot.nix
    │   ├── network.nix
    │   └── users.nix
    │
    ├── atom           # Interface gráfica e ambiente visual
    │   ├── default.nix
    │   ├── ssh         
    |   ├── dns         
    │   ├── mimetypes   
    │   └── gtk         
    |   └── colorscheme 
    │
    ├── shell          # Terminal e shell utilities
    │   ├── default.nix
    │   ├── fish.nix
    │   ├── wezterm.nix
    │   └── git.nix
    │
    ├── forge         # Ambiente de desenvolvimento
    │   ├── default.nix
    │   ├── node.nix
    │   ├── go.nix
    │   ├── rust.nix
    │   └── lua.nix
    │
    ├── scroll        # Aplicativos de conhecimento/documentação/leitura/research
    │   ├── default.nix
    │   ├── obsidian.nix
    │   └── zotero.nix
    │
    ├── spark         # Utilitários e ferramentas (serviços, scripts, etc)
    │   ├── default.nix
    │   ├── espanso.nix
    │   └── neofetch.nix
    │
    └── orbit         # Home-manager config
        ├── default.nix
        └── home.nix
```

## Exemplo de configuração

### flake.nix

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
```

## Significado dos Diretórios

- **core**: Configurações fundamentais do sistema (como o núcleo de um átomo)
- **atom**: Interface gráfica (representa a camada visual, como a estrutura de um átomo)
- **shell**: Terminal e utilitários relacionados (como uma concha que protege)
- **forge**: Ambiente de desenvolvimento (onde as ferramentas são forjadas)
- **scroll**: Aplicativos relacionados a conhecimento (como pergaminhos antigos)
- **spark**: Utilitários pequenos mas essenciais (como faíscas que facilitam a vida)
- **orbit**: Configurações do home-manager (orbita em torno do sistema)

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

## Install unstable packages

```bash
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs-unstable
nix-channel --update
```

## Get SHA256 Github

```bash
nix-shell -p nix-prefetch-git --extra-experimental-features 'nix-command flakes'
nix-prefetch-git https://github.com/awesomeWM/awesome --rev fcd23a7478b38788e13849f76190e60338ba9fdc
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
home-manager switch # this will switch to the current configuration
```

## Comandos Úteis

```bash
# Reconstruir o sistema
sudo nixos-rebuild switch --flake .#voltage

# Atualizar flake.lock
nix flake update

# Limpar gerações antigas
sudo nix-collect-garbage -d
```

## Upgrade

```bash
sudo nix-channel --update && nix flake update nixpkgs && sudo nixos-rebuild switch --flake .#rwietter --upgrade
```

---

# Otimizações

- [Storage_optimization](https://nixos.wiki/wiki/Storage_optimization)