# =============================================================================
# Makefile for NixOS Configuration Management
#
# Author: Maurício Witter
# Version: 1.0
#
# This Makefile provides a set of commands to simplify the management
# of a NixOS configuration based on Flakes and Home Manager.
# =============================================================================

# --- Shell Configuration and Variables ---
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

# --- Documentation ---

.DEFAULT_GOAL := help

# It parses '##' comments in this file to generate the help output.
help:
	@echo ""
	@echo "✨ $(BOLD)NixOS Management Commands$(RESET)"
	@echo ""
	@echo "Usage: $(BOLD)make$(RESET) $(GREEN)<target>$(RESET)"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  $(GREEN)%-20s$(RESET) %s\n", $$1, $$2}'
	@echo ""

# Declares all our targets as "phony".
# This tells 'make' that these targets don't create files with their names,
# ensuring the commands always run.
.PHONY: help rebuild home-switch update gc-store gc-system \
	optimize cleanup build gen-rm-old gen-rm-days flake-templates \
	flake-template-init nh-update

# =============================================================================
#_ System and Home Manager Management Targets
# =============================================================================

rebuild: ## (rebuild) Rebuilds and activates the NixOS configuration from the flake.
	@echo "$(YELLOW)🚀 Rebuilding NixOS system...$(RESET)"
	@sudo nixos-rebuild switch --flake .#$(NIX_USER)

home-switch: ## (home) Updates and activates the Home Manager configuration.
	@echo "$(YELLOW)🏠 Updating Home Manager configuration...$(RESET)"
	@home-manager -b backup switch --flake .#$(NIX_USER)

# https://nixos-and-flakes.thiscute.world/nixos-with-flakes/update-the-system
update: ## (update) Update and upgrade the NixOS system and Home Manager.
	@echo "$(YELLOW)🔄 Updating NixOS system and Home Manager...$(RESET)"
	# Update flake.lock with new hashes of inputs
	@sudo nix flake update
	# Generate a new generation of the NixOS system
	@sudo nixos-rebuild switch --flake .#$(NIX_USER) --upgrade

nh-update: ## (nh-update) Switches the operating system using 'nh'.
	@echo "$(YELLOW) SWITCHING OS with 'nh' for host $(NIX_USER)...$(RESET)"
	@nh os switch -H $(NIX_USER) -u .

# =============================================================================
#_ Maintenance and Cleanup Targets (Garbage Collection)
# =============================================================================

gc-store: ## (gc-store) Runs the garbage collector on the Nix store.
	@echo "$(BLUE)🗑️ Looking for garbage in the Nix Store...$(RESET)"
	@nix-store --gc --print-roots | egrep -v "^(/nix/var|/run/\w+-system|\{memory)"

gc-system: ## (gc-system) Collects system garbage older than 5 days.
	@echo "$(BLUE)🗑️ Collecting system garbage older than 5 days...$(RESET)"
	@sudo nix-collect-garbage --delete-older-than 5d

optimize: ## (optimize) Optimizes the Nix store.
	@echo "$(BLUE)⚙️ Optimizing the Nix Store...$(RESET)"
	@nix-store --optimize

cleanup: ## (cleanup) Performs a full system and generations cleanup.
	@echo "$(BLUE)🧹 Performing full cleanup...$(RESET)"
	@echo "Collecting user garbage..."
	@nix-collect-garbage -d
	@echo "Collecting system garbage..."
	@sudo nix-collect-garbage -d
	@echo "Deleting generations older than 3 days..."
	@nix-env --delete-generations +3d
	@echo "Running garbage collector and optimizing store..."
	@nix-store --gc
	@nix-store --optimize
	@echo "$(GREEN)Cleanup complete!$(RESET)"

gen-rm-old: ## (gen-rm-old) Removes all old generations.
	@echo "$(BLUE)🗑️ Removing all old generations...$(RESET)"
	@nix-env --delete-generations old

gen-rm-days: ## (gen-rm-days) Removes generations older than X days (e.g., make gen-rm-days DAYS=3).
	@echo "$(BLUE)🗑️ Removing generations older than $(DAYS) days...$(RESET)"
	@nix-env --delete-generations $(DAYS)d

# =============================================================================
#_ Flake and Build Related Targets
# =============================================================================

build: ## (build) Executes a 'nix-build' without creating the output link.
	@echo "$(BLUE)🛠️ Executing nix-build...$(RESET)"
	@nix-build --no-out-link

flake-templates: ## (flake-templates) Lists available flake templates.
	@echo "$(BLUE)📜 Listing flake templates...$(RESET)"
	@nix flake show templates

flake-template-init: ## (flake-template-init) Initializes a flake from a template.
	@echo "$(BLUE)✨ Please specify the template. E.g., make flake-template-init TEMPLATE=default$(RESET)"
	@nix flake init -t templates#$(TEMPLATE)

# =============================================================================
