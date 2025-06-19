{ lib, vars, pkgs, theme, ... }:
let
  colors = theme.scheme.variants."${vars.appearance.theme}";
in
{
  programs.rmpc = {
    enable = true;
    package = pkgs.rmpc;
  };

  xdg.configFile = lib.mkForce {
    "rmpc/themes/default.ron" = {
      force = true;
      text = ''
        #![enable(implicit_some)]
        #![enable(unwrap_newtypes)]
        #![enable(unwrap_variant_newtypes)]
        (
            default_album_art_path: None,
            draw_borders: true,
            show_song_table_header: true,
            symbols: (song: "🎵", dir: "📁", playlist: "🎼", marker: "\u{e0b0}"),
            format_tag_separator: " | ",
            mutliple_tag_resolution_strategy: Last,
            preview_label_style: (fg: "${colors.yellow.root}"),
            preview_metadata_group_style: (fg: "${colors.yellow.root}", modifiers: "Bold"),
            level_styles: (
                info: (fg: "${colors.blue.root}", bg: "${colors.bg.root}"),
                warn: (fg: "${colors.yellow.root}", bg: "${colors.bg.root}"),
                error: (fg: "${colors.red.root}", bg: "${colors.bg.root}"),
                debug: (fg: "${colors.cyan.root}", bg: "${colors.bg.root}"),
                trace: (fg: "${colors.magenta.root}", bg: "${colors.bg.root}"),
            ),
            tab_bar: (
                enabled: true,
                active_style: (fg: "${colors.bg.root}", bg: "${colors.fg.shift}", modifiers: "Bold"),
                inactive_style: (fg: "${colors.fg.shift}", bg: "${colors.bg.root}", modifiers: ""),
            ),
            layout: Split(
                direction: Vertical,
                panes: [
                    (
                        pane: Pane(Header),
                        size: "1",
                    ),
                    (
                        pane: Pane(TabContent),
                        size: "100%",
                    ),
                    (
                        pane: Pane(ProgressBar),
                        size: "1",
                    ),
                ],
            ),
            progress_bar: (
                symbols: ["█", "█", "█"],
                track_style: (bg: "${colors.bg.root}", fg: "${colors.bg.root}"),
                elapsed_style: (fg: "${colors.fg.root}", bg: "${colors.bg.root}"),
                thumb_style: (fg: "${colors.fg.fade}", bg: "${colors.bg.shift}"),
            ),
            scrollbar: (
                symbols: ["│", "█", "▲", "▼"],
                track_style: (),
                ends_style: (),
                thumb_style: (fg: "${colors.fg.root}"),
            ),
            browser_column_widths: [20, 38, 42],
            text_color: "${colors.fg.root}",
            background_color: None,
            header_background_color: None,
            modal_background_color: None,
            modal_backdrop: true,
            borders_style: (fg: "${colors.fg.root}"),
            highlighted_item_style: (fg: "${colors.fg.root}", modifiers: "Bold"),
            current_item_style: (fg: "${colors.bg.root}", bg: "${colors.fg.root}", modifiers: "Bold"),
            highlight_border_style: (fg: "${colors.bg.root}"),
            song_table_format: [
                (
                    prop: (kind: Property(Artist), style: (fg: "${colors.fg.root}"), default: (kind: Text("Unknown"))),
                    width: "50%",
                    alignment: Right,
                ),
                (
                    prop: (kind: Text("-"), style: (fg: "${colors.fg.root}"), default: (kind: Text("Unknown"))),
                    width: "1",
                    alignment: Center,
                ),
                (
                    prop: (kind: Property(Title), style: (fg: "${colors.fg.root}"), default: (kind: Text("Unknown"))),
                    width: "50%",
                ),
            ],
            header: (
                rows: [
                    (
                        left: [
                            (kind: Text("["), style: (fg: "${colors.magenta.root}", modifiers: "Bold")),
                            (kind: Property(Status(State)), style: (fg: "${colors.magenta.root}", modifiers: "Bold")),
                            (kind: Text("]"), style: (fg: "${colors.magenta.root}", modifiers: "Bold"))
                        ],
                        center: [
                            (kind: Property(Song(Artist)), style: (fg: "${colors.yellow.root}", modifiers: "Bold"),
                                default: (kind: Text("Unknown"), style: (fg: "${colors.yellow.root}", modifiers: "Bold"))
                            ),
                            (kind: Text(" - ")),
                            (kind: Property(Song(Title)), style: (fg: "${colors.blue.root}", modifiers: "Bold"),
                                default: (kind: Text("No Song"), style: (fg: "${colors.blue.root}", modifiers: "Bold"))
                            )
                        ],
                        right: [
                            (kind: Text("Vol: "), style: (fg: "${colors.magenta.root}", modifiers: "Bold")),
                            (kind: Property(Status(Volume)), style: (fg: "${colors.magenta.root}", modifiers: "Bold")),
                            (kind: Text("% "), style: (fg: "${colors.magenta.root}", modifiers: "Bold"))
                        ]
                    )
                ],
            ),
        )
      '';
    };
  };
}