# link all files in `./scripts` to `~/.config/i3/scripts`

```nix
home.file.".config/i3/scripts" = {
  source = ./scripts;
  recursive = true;   # link recursively
  executable = true;  # make all files executable
};
```

# encode the file content in nix configuration file directly

```nix
home.file.".xxx".text = ''
    xxx
'';
```
