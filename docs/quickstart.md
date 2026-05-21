# Quickstart

Practical first steps for contributors/operators working in this NixOS flake repo.

## Prerequisites

- You are on NixOS (or a Linux host with Nix + Flakes enabled).
- `nix` supports experimental features `nix-command` and `flakes`.
- `make` is available.
- `home-manager` is installed (used by `make home-switch`).
- You can run privileged commands (`sudo`) for system rebuild/update targets.

## First-time orientation

Core entrypoints:

- `flake.nix`
  - Defines flake inputs/outputs.
  - Wires both `nixosConfigurations.rwietter` and `homeConfigurations.rwietter`.
  - Pulls shared variables from `environment/vars.nix` and theme from `ui/colorscheme`.
- `configuration.nix`
  - Main NixOS system module (boot, networking, services, users, packages).
- `homemanager/home.nix`
  - Main Home Manager module (user-level apps/shell/ui imports and toggles).

## First 10 minutes workflow

Run from repository root:

```bash
make rebuild
make home-switch
make update
make cleanup
```

What each does (from `makefile`):

- `make rebuild`: `sudo nixos-rebuild switch --flake .#rwietter`
- `make home-switch`: `home-manager -b backup switch --flake .#rwietter`
- `make update`: `sudo nix flake update` + `sudo nixos-rebuild switch --flake .#rwietter --upgrade`
- `make cleanup`: runs user/system garbage collection, generation cleanup, and store optimize

## CI-equivalent validation

The GitHub workflow (`.github/workflows/nix-build.yml`) validates by building these two outputs:

```bash
nix build .#nixosConfigurations.rwietter.config.system.build.toplevel \
  .#homeConfigurations.rwietter.activationPackage
```

Use that command locally to match CI build behavior.

## Change identity/theme defaults

- Identity defaults live in `environment/vars.nix`:
  - `git.username`, `git.fullname`, `git.email`
  - `os.hostname`, `os.homeDirectory`, shell/terminal/font defaults
- Appearance defaults:
  - Select color scheme in `environment/vars.nix` via `appearance.colorscheme`
  - Theme mapping is resolved in `ui/colorscheme/default.nix`
  - Available schemes are files under `ui/colorscheme/` (for example `eink.nix`, `everforest.nix`, `synthwave-dream.nix`)

## Troubleshooting

- **Overlay path nuance**
  - In `configuration.nix`, the overlay line is currently commented as:
    - `# nixpkgs.overlays = [ (import ./overlays.nix) ];`
  - The repository path is `overlays/overlays.nix`.
  - If you enable overlays, import the correct file path from the repo layout.

- **`make rebuild` / `make update` permission errors**
  - These targets use `sudo`. Ensure your user can run privileged NixOS rebuild commands.

- **`make home-switch` command not found**
  - Install/enable Home Manager first (the target calls `home-manager` directly).
