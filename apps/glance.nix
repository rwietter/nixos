{
  config,
  lib,
  newTheme,
  ...
}:

let
  t = newTheme.tokens;
  p = t.palette;

  hexDigitToInt =
    c:
    {
      "0" = 0;
      "1" = 1;
      "2" = 2;
      "3" = 3;
      "4" = 4;
      "5" = 5;
      "6" = 6;
      "7" = 7;
      "8" = 8;
      "9" = 9;
      "a" = 10;
      "b" = 11;
      "c" = 12;
      "d" = 13;
      "e" = 14;
      "f" = 15;
      "A" = 10;
      "B" = 11;
      "C" = 12;
      "D" = 13;
      "E" = 14;
      "F" = 15;
    }
    ."${c}";

  hexPairToInt =
    pair:
    (hexDigitToInt (builtins.substring 0 1 pair)) * 16 + (hexDigitToInt (builtins.substring 1 1 pair));

  stripHash = hex: if lib.hasPrefix "#" hex then builtins.substring 1 6 hex else hex;

  min3 =
    a: b: c:
    lib.min a (lib.min b c);

  max3 =
    a: b: c:
    lib.max a (lib.max b c);

  round =
    x:
    let
      floor = builtins.floor x;
    in
    if x - floor >= 0.5 then floor + 1 else floor;

  hexToHsl =
    hex:
    let
      clean = stripHash hex;

      r255 = hexPairToInt (builtins.substring 0 2 clean);
      g255 = hexPairToInt (builtins.substring 2 2 clean);
      b255 = hexPairToInt (builtins.substring 4 2 clean);

      r = r255 / 255.0;
      g = g255 / 255.0;
      b = b255 / 255.0;

      max = max3 r g b;
      min = min3 r g b;
      delta = max - min;

      l = (max + min) / 2.0;

      s =
        if delta == 0.0 then
          0.0
        else if l > 0.5 then
          delta / (2.0 - max - min)
        else
          delta / (max + min);

      hRaw =
        if delta == 0.0 then
          0.0
        else if max == r then
          ((g - b) / delta) + (if g < b then 6.0 else 0.0)
        else if max == g then
          ((b - r) / delta) + 2.0
        else
          ((r - g) / delta) + 4.0;

      h = hRaw / 6.0;

      hDeg = round (h * 360.0);
      sPct = round (s * 100.0);
      lPct = round (l * 100.0);

      normalizedHue = if lPct <= 5 || sPct <= 3 then 0 else hDeg;

      normalizedSaturation = if lPct <= 5 then 0 else sPct;
    in
    "${toString normalizedHue} ${toString normalizedSaturation} ${toString lPct}";

  themeColors = {
    background = hexToHsl t.bg.base;
    primary = hexToHsl t.fg.base;
    positive = hexToHsl t.state.active;
    negative = hexToHsl t.state.urgent;
  };

  themeText = ''
    background-color: ${themeColors.background}
    primary-color: ${themeColors.primary}
    positive-color: ${themeColors.positive}
    negative-color: ${themeColors.negative}
  '';

  themeFile = builtins.toFile "glance-theme.yml" themeText;
in
{
  options = {
    glance.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable Glance";
    };
  };

  config = lib.mkIf config.glance.enable {
    home.activation.writeGlanceTheme = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      mkdir -p "$HOME/.config/glance"
      rm -f "$HOME/.config/glance/theme.yml"
      install -m 0644 ${themeFile} "$HOME/.config/glance/theme.yml"
    '';
  };
}
