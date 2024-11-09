{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Node.js e ferramentas relacionadas
    nodejs_20
    yarn
    nodePackages.pnpm
    nodePackages.npm
    
    # Ferramentas de desenvolvimento Node.js
    nodePackages.typescript
    nodePackages.ts-node
    
    # LSP e formatação
    nodePackages.prettier
    nodePackages."@typescript-eslint/parser"
    nodePackages.eslint
  ];

  # Configuração de ambiente Node.js
  environment.shellInit = ''
    export NPM_CONFIG_PREFIX="$HOME/.npm-global"
    export PATH="$HOME/.npm-global/bin:$PATH"
  '';

  # Exemplo de shell.nix para projeto Node.js
  environment.etc."dev/templates/node-shell.nix".text = ''
    { pkgs ? import <nixpkgs> {} }:

    pkgs.mkShell {
      buildInputs = with pkgs; [
        nodejs_20
        yarn
        nodePackages.typescript
        nodePackages.prisma
      ];

      shellHook = ''
        export PATH="$PWD/node_modules/.bin:$PATH"
      '';
    }
  '';
}