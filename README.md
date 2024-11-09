# Estrutura Modular NixOS - ⚡ Voltage

```
voltage/
├── flake.nix
├── flake.lock
├── README.md
└── src
    ├── core            # Configurações essenciais do sistema
    │   ├── default.nix
    │   ├── boot.nix
    │   ├── network.nix
    │   └── users.nix
    │
    ├── atom           # Interface gráfica e ambiente visual
    │   ├── default.nix
    │   ├── awesome    # AwesomeWM config
    │   │   ├── default.nix
    │   │   └── rc.lua
    │   ├── picom.nix  # Compositor
    │   └── dunst.nix  # Notificações
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
    ├── scroll        # Aplicativos de conhecimento/documentação
    │   ├── default.nix
    │   ├── obsidian.nix
    │   └── zotero.nix
    │
    ├── spark         # Utilitários e ferramentas
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
  description = "⚡ Voltage - Uma configuração NixOS elegante e modular";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.voltage = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./src/core
        ./src/atom
        ./src/shell
        ./src/forge
        ./src/scroll
        ./src/spark
        
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.seu-usuario = import ./src/orbit/home.nix;
        }
      ];
    };
  };
}
```

### src/core/default.nix

```nix
{ config, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./network.nix
    ./users.nix
  ];

  # Configurações básicas do sistema
  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "pt_BR.UTF-8";
}
```

### src/atom/awesome/default.nix

```nix
{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    windowManager.awesome = {
      enable = true;
      luaModules = with pkgs.luaPackages; [
        luarocks
        luadbi-mysql
      ];
    };
  };

  # Copiar configuração do AwesomeWM
  home.file.".config/awesome/rc.lua".source = ./rc.lua;
}
```

### src/shell/fish.nix

```nix
{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Desabilita mensagem de boas-vindas
      
      # Aliases úteis
      alias v="nvim"
      alias g="git"
      alias ls="exa --icons"
    '';
    
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch";
      update = "nix flake update";
    };
  };
}
```

### src/forge/default.nix

```nix
{ config, pkgs, ... }:

{
  imports = [
    ./node.nix
    ./go.nix
    ./rust.nix
    ./lua.nix
  ];

  environment.systemPackages = with pkgs; [
    gcc
    gnumake
    cmake
    git
    nixfmt
    nil # Nix LSP
  ];
}
```

### src/orbit/home.nix

```nix
{ config, pkgs, ... }:

{
  home.username = "seu-usuario";
  home.homeDirectory = "/home/seu-usuario";
  home.stateVersion = "23.11";

  # Programas gerenciados pelo home-manager
  programs = {
    brave.enable = true;
    git.enable = true;
    fish.enable = true;
  };

  # Temas e configurações
  gtk = {
    enable = true;
    theme.name = "Dracula";
    iconTheme.name = "Papirus-Dark";
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