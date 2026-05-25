{ vars, pkgs }:

let
  theme = vars.appearance.palette or "everforest";
  mode = vars.appearance.mode or "dark";

  raw = import ./palettes/${theme}/${mode}.nix {
    inherit pkgs;
  };

  tokens = import ./semantic/default.nix {
    palette = raw.palette;
  };
in
{
  inherit mode tokens;
  name = theme;
  integrations = raw.integrations;
}
