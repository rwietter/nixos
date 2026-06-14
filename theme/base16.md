# Base16

O Base16 nasceu para resolver um problema específico: permitir que aplicações diferentes (terminal, editor, Waybar, GTK, Neovim, tmux, etc.) recebam uma paleta consistente sem saber nada sobre o tema.

Os nomes base00 até base0F não representam cores. Eles representam funções.

Esses oito primeiros slots definem quase toda a aparência do tema.

```
- base00 → background
- base01 → elevated background
- base02 → highlight selection
- base03 → comments and borders

- base04 → subtle text
- base05 → normal text
- base06 → highlighted text
- base07 → maximum contrast text
```

# Accents

Os "Accents" não possuem um significado específico. Já foram usados para representar tokens sintáticos, mas isso não é obrigatório.

```
- base08 -> variáveis, tags, deleted
- base09 -> inteiros, constantes
- base0A -> classes, atributos, search highlight
- base0B -> strings
- base0C -> suporte, regex, escape sequences
- base0D -> funções, métodos
- base0E -> keywords, operadores, tipos
- base0F -> deprecated, edge cases
```

Você pode transformar oito slots em uma família espectral e.g.: `violeta → magenta`.

```
base08 = "#C678DD"; # purple blossom
base09 = "#B38CFF"; # neon lavender
base0A = "#D6AAEB"; # moonlight
base0B = "#8C6CFF"; # spectral violet
base0C = "#A78BFA"; # soft plasma
base0D = "#7F5AF0"; # electric violet
base0E = "#E879F9"; # eye glow
base0F = "#4B2E83"; # deep amethyst
```

Ou você pode usar um padrão

```sh
- base08 = accent quente
- base09 = accent quente secundário
- base0A = accent principal

- base0B = active

- base0C = accent frio secundário
- base0D = focus

- base0E = accent forte
- base0F = accent profundo

# -----------------
# E.g.:
# -----------------

- base08 = #E879F9
- base09 = #D6AAEB
- base0A = #C678DD

- base0B = #8C6CFF

- base0C = #A78BFA
- base0D = #7F5AF0

- base0E = #FF6BF5
- base0F = #4B2E83
```


---

Terminal:

- Strings → base0B
- Keywords → base0E
- Funções → base0D
- Tipos → base09
- Constantes → base08

Waybar:

- Fundo → base00
- Módulos → base01
- Bordas → base03
- Texto → base05
- Workspace ativo → base0D
- Clock → base0E
