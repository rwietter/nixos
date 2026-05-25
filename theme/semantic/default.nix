{ palette }:

# base00 → background principal
# base01 → background elevado/painéis
# base02 → seleção/highlight fraco
# base03 → comentários/bordas

# base04 → foreground discreto
# base05 → foreground principal
# base06 → foreground forte
# base07 → foreground extremo

# base08 → red
# base09 → orange
# base0A → yellow
# base0B → green
# base0C → cyan
# base0D → blue
# base0E → magenta
# base0F → brown

{
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

  feedback = {
    success = palette.base0B;
    warning = palette.base0A;
    danger = palette.base08;
    info = palette.base0D;
  };

  border = palette.base03;

  color = {
    black = palette.base03;
    white = palette.base07;

    red = palette.base08;
    orange = palette.base09;
    yellow = palette.base0A;
    green = palette.base0B;
    cyan = palette.base0C;
    blue = palette.base0D;
    magenta = palette.base0E;
    brown = palette.base0F;
  };
}
