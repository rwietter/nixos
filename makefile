# =============================================================================
# Makefile para Gerenciamento de Configuração NixOS
#
# Autor: Maurício Witter
# Versão: 1.0
#
# Este Makefile fornece um conjunto de comandos para simplificar o gerenciamento
# de uma configuração NixOS baseada em Flakes e Home Manager.
# =============================================================================

# --- Configuração do Shell e Variáveis ---
SHELL := /usr/bin/env bash
NIX_USER := rwietter

ifneq ($(shell tput colors),)
    ifneq ($(shell tput colors),-1)
        GREEN := $(shell tput setaf 2)
        YELLOW := $(shell tput setaf 3)
        BLUE := $(shell tput setaf 4)
        BOLD := $(shell tput bold)
        RESET := $(shell tput sgr0)
    endif
endif

# --- Documentação ---

.DEFAULT_GOAL := help

# Ele analisa os comentários '##' neste arquivo para gerar a saída de ajuda.
help:
	@echo ""
	@echo "✨ $(BOLD)Comandos de Gerenciamento do NixOS$(RESET)"
	@echo ""
	@echo "Uso: $(BOLD)make$(RESET) $(GREEN)<alvo>$(RESET)"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  $(GREEN)%-20s$(RESET) %s\n", $$1, $$2}'
	@echo ""

# Declara todos os nossos alvos como "phony" (falsos).
# Isso diz ao 'make' que esses alvos não criam arquivos com seus nomes,
# garantindo que os comandos sempre sejam executados.
.PHONY: help rebuild home-switch update upgrade gc-store gc-system \
	optimize cleanup build gen-rm-old gen-rm-days flake-templates \
	flake-template-init nh-update

# =============================================================================
#_ Alvos de Gerenciamento do Sistema e Home Manager
# =============================================================================

rebuild: ## (rebuild) Reconstrói e ativa a configuração do NixOS a partir do flake.
	@echo "$(YELLOW)🚀 Reconstruindo o sistema NixOS...$(RESET)"
	@sudo nixos-rebuild switch --flake .#$(NIX_USER)

home-switch: ## (home) Atualiza e ativa a configuração do Home Manager.
	@echo "$(YELLOW)🏠 Atualizando a configuração do Home Manager...$(RESET)"
	@home-manager -b backup switch --flake .#$(NIX_USER) && awesome-client "awesome.restart()"

update: ## (update) Atualiza os canais, o flake e o Home Manager.
	@echo "$(YELLOW)🔄 Atualizando canais e flake...$(RESET)"
	@sudo nix-channel --update && nix flake update nixpkgs
	@$(MAKE) home-switch

upgrade: ## (upgrade) Atualiza os canais e faz o upgrade completo do sistema.
	@echo "$(YELLOW)⬆️  Fazendo o upgrade completo do sistema NixOS...$(RESET)"
	@sudo nix-channel --update && nix flake update nixpkgs
	@sudo nixos-rebuild switch --flake .#$(NIX_USER) --upgrade

nh-update: ## (nh-update) Alterna o sistema operacional usando 'nh'.
	@echo "$(YELLOW) SWITCHING OS with 'nh' for host $(NIX_USER)...$(RESET)"
	@nh os switch -H $(NIX_USER) -u .

# =============================================================================
#_ Alvos de Manutenção e Limpeza (Garbage Collection)
# =============================================================================

gc-store: ## (gc-store) Executa o garbage collector no Nix store.
	@echo "$(BLUE)🗑️  Procurando por lixo no Nix Store...$(RESET)"
	@nix-store --gc --print-roots | egrep -v "^(/nix/var|/run/\w+-system|\{memory)"

gc-system: ## (gc-system) Coleta lixo do sistema com mais de 5 dias.
	@echo "$(BLUE)🗑️  Coletando lixo do sistema com mais de 5 dias...$(RESET)"
	@sudo nix-collect-garbage --delete-older-than 5d

optimize: ## (optimize) Otimiza o Nix store.
	@echo "$(BLUE)⚙️  Otimizando o Nix Store...$(RESET)"
	@nix-store --optimize

cleanup: ## (cleanup) Executa uma limpeza completa do sistema e gerações.
	@echo "$(BLUE)🧹 Executando limpeza completa...$(RESET)"
	@echo "Coletando lixo do usuário..."
	@nix-collect-garbage -d
	@echo "Coletando lixo do sistema..."
	@sudo nix-collect-garbage -d
	@echo "Deletando gerações com mais de 3 dias..."
	@nix-env --delete-generations +3d
	@echo "Executando garbage collector e otimizando o store..."
	@nix-store --gc
	@nix-store --optimize
	@echo "$(GREEN)Limpeza concluída!$(RESET)"

gen-rm-old: ## (gen-rm-old) Remove todas as gerações antigas.
	@echo "$(BLUE)🗑️  Removendo todas as gerações antigas...$(RESET)"
	@nix-env --delete-generations old

gen-rm-days: ## (gen-rm-days) Remove gerações com mais de X dias (ex: make gen-rm-days DAYS=3).
	@echo "$(BLUE)🗑️  Removendo gerações com mais de $(DAYS) dias...$(RESET)"
	@nix-env --delete-generations $(DAYS)d

# =============================================================================
#_ Alvos Relacionados a Flakes e Builds
# =============================================================================

build: ## (build) Executa um 'nix-build' sem criar o link de saída.
	@echo "$(BLUE)🛠️  Executando nix-build...$(RESET)"
	@nix-build --no-out-link

flake-templates: ## (flake-templates) Lista os templates de flake disponíveis.
	@echo "$(BLUE)📜 Listando templates de flake...$(RESET)"
	@nix flake show templates

flake-template-init: ## (flake-template-init) Inicia um flake a partir de um template.
	@echo "$(BLUE)✨ Por favor, especifique o template. Ex: make flake-template-init TEMPLATE=default$(RESET)"
	@nix flake init -t templates#$(TEMPLATE)

# =============================================================================
