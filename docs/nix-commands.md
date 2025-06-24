# (1) List Generations

```shell
nixos-rebuild list-generations
```

# (2) Rollback to Previous Generation

```shell
nixos-rebuild switch --rollback #<generation>
```

# (3) Nix Environment

```shell
# Install a package in the Nix environment
nix-env -iA nixpkgs.<package-name>

# List installed packages
nix-env -q

# Upgrade all packages in the Nix environment
nix-env -u

# Remove a package from the Nix environment
nix-env -e <package-name>
```
