{ palette }:

{
  palette = {
    inherit (palette)
      base00 base01 base02 base03
      base04 base05 base06 base07
      base08 base09 base0A base0B
      base0C base0D base0E base0F;
  };

  bg = {
    base = palette.base00;
    surface = palette.base01;
    highlight = palette.base02;
  };

  fg = {
    subtle = palette.base04;
    base = palette.base05;
    emphasis = palette.base06;
  };

  border = {
    normal = palette.base03;
    focus = palette.base0A;
  };

  accent = {
    primary = palette.base0A;
    secondary = palette.base0E;
  };

  state = {
    active = palette.base0B;
    urgent = palette.base08;
    info = palette.base0D;
  };
}
