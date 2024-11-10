{ mylib, vars, ... }:

with mylib; {
  theme = utils.match { colorscheme = vars.appearance.colorscheme or "vesper"; } [
    [{ colorscheme = "catppuccin"; } (import ./catppuccin.nix)]
    [{ colorscheme = "eva"; } (import ./eva.nix)]
    [{ colorscheme = "vesper"; } (import ./vesper.nix)]
  ];
}
