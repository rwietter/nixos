{ mylib, vars, ... }:

with mylib; {
  theme = utils.match { colorscheme = vars.appearance.colorscheme or "vesper"; } [
    [{ colorscheme = "argentinian"; } (import ./argentinian.nix)]
    [{ colorscheme = "eva"; } (import ./eva.nix)]
    [{ colorscheme = "vesper"; } (import ./vesper.nix)]
  ];
}
