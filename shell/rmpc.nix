{
  lib,
  unstable,
  newTheme,
  config,
  ...
}:

let
  t = newTheme.tokens;
in
{
  options = {
    rw.rmpc.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable rmpc (Remote Music Player Client)";
    };
  };

  config = lib.mkIf config.rw.rmpc.enable {
    programs.rmpc = {
      enable = true;
      package = unstable.rmpc;
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

              symbols: (
                  song: "🎵",
                  dir: "📁",
                  playlist: "🎼",
                  marker: "\u{e0b0}"
              ),

              format_tag_separator: " | ",
              mutliple_tag_resolution_strategy: Last,

              preview_label_style: (
                  fg: "${t.accent.primary}"
              ),

              preview_metadata_group_style: (
                  fg: "${t.accent.primary}",
                  modifiers: "Bold"
              ),

              level_styles: (
                  info: (
                      fg: "${t.state.info}",
                      bg: "${t.bg.base}"
                  ),

                  warn: (
                      fg: "${t.accent.primary}",
                      bg: "${t.bg.base}"
                  ),

                  error: (
                      fg: "${t.state.urgent}",
                      bg: "${t.bg.base}"
                  ),

                  debug: (
                      fg: "${t.accent.secondary}",
                      bg: "${t.bg.base}"
                  ),

                  trace: (
                      fg: "${t.fg.subtle}",
                      bg: "${t.bg.base}"
                  ),
              ),

              tab_bar: (
                  enabled: true,

                  active_style: (
                      fg: "${t.bg.base}",
                      bg: "${t.accent.primary}",
                      modifiers: "Bold"
                  ),

                  inactive_style: (
                      fg: "${t.fg.base}",
                      bg: "${t.bg.base}"
                  ),
              ),

              layout: Split(
                  direction: Vertical,
                  panes: [
                      (
                          pane: Pane(Header),
                          size: "2",
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

                  track_style: (
                      bg: "${t.bg.surface}",
                      fg: "${t.bg.surface}"
                  ),

                  elapsed_style: (
                      fg: "${t.accent.primary}",
                      bg: "${t.bg.base}"
                  ),

                  thumb_style: (
                      fg: "${t.fg.emphasis}",
                      bg: "${t.bg.surface}"
                  ),
              ),

              scrollbar: (
                  symbols: ["│", "█", "▲", "▼"],
                  track_style: (),
                  ends_style: (),
                  thumb_style: (
                      fg: "${t.fg.base}"
                  ),
              ),

              browser_column_widths: [20, 38, 42],

              text_color: "${t.fg.base}",

              background_color: None,
              header_background_color: None,
              modal_background_color: None,
              modal_backdrop: true,

              borders_style: (
                  fg: "${t.border.normal}"
              ),

              highlighted_item_style: (
                  fg: "${t.fg.emphasis}",
                  modifiers: "Bold"
              ),

              current_item_style: (
                  fg: "${t.bg.base}",
                  bg: "${t.accent.primary}",
                  modifiers: "Bold"
              ),

              highlight_border_style: (
                  fg: "${t.border.focus}"
              ),

              song_table_format: [
                  (
                      prop: (
                          kind: Property(Artist),
                          style: (
                              fg: "${t.fg.base}"
                          ),
                          default: (
                              kind: Text("Unknown")
                          )
                      ),
                      width: "50%",
                      alignment: Right,
                  ),
                  (
                      prop: (
                          kind: Text("-"),
                          style: (
                              fg: "${t.fg.base}"
                          ),
                          default: (
                              kind: Text("Unknown")
                          )
                      ),
                      width: "1",
                      alignment: Center,
                  ),
                  (
                      prop: (
                          kind: Property(Title),
                          style: (
                              fg: "${t.fg.base}"
                          ),
                          default: (
                              kind: Text("Unknown")
                          )
                      ),
                      width: "50%",
                  ),
              ],

              header: (
                  rows: [
                      (
                          left: [
                              (
                                  kind: Text("["),
                                  style: (
                                      fg: "${t.accent.secondary}",
                                      modifiers: "Bold"
                                  )
                              ),
                              (
                                  kind: Property(Status(State)),
                                  style: (
                                      fg: "${t.accent.secondary}",
                                      modifiers: "Bold"
                                  )
                              ),
                              (
                                  kind: Text("]"),
                                  style: (
                                      fg: "${t.accent.secondary}",
                                      modifiers: "Bold"
                                  )
                              )
                          ],

                          center: [
                              (
                                  kind: Property(Song(Artist)),
                                  style: (
                                      fg: "${t.accent.primary}",
                                      modifiers: "Bold"
                                  ),
                                  default: (
                                      kind: Text("Unknown"),
                                      style: (
                                          fg: "${t.accent.primary}",
                                          modifiers: "Bold"
                                      )
                                  )
                              ),

                              (kind: Text(" - ")),

                              (
                                  kind: Property(Song(Title)),
                                  style: (
                                      fg: "${t.state.info}",
                                      modifiers: "Bold"
                                  ),
                                  default: (
                                      kind: Text("No Song"),
                                      style: (
                                          fg: "${t.state.info}",
                                          modifiers: "Bold"
                                      )
                                  )
                              )
                          ],

                          right: [
                              (
                                  kind: Text("Vol: "),
                                  style: (
                                      fg: "${t.accent.secondary}",
                                      modifiers: "Bold"
                                  )
                              ),
                              (
                                  kind: Property(Status(Volume)),
                                  style: (
                                      fg: "${t.accent.secondary}",
                                      modifiers: "Bold"
                                  )
                              ),
                              (
                                  kind: Text("% "),
                                  style: (
                                      fg: "${t.accent.secondary}",
                                      modifiers: "Bold"
                                  )
                              )
                          ]
                      ),

                      (
                          left: [
                              (kind: Text("[ "), style: (fg: "${t.fg.base}", modifiers: "Bold")),
                              (kind: Property(Status(Elapsed)), style: (fg: "${t.fg.subtle}")),
                              (kind: Text(" / "), style: (fg: "${t.fg.base}", modifiers: "Bold")),
                              (kind: Property(Status(Duration)), style: (fg: "${t.fg.subtle}")),
                              (kind: Text(" | "), style: (fg: "${t.fg.base}")),
                              (kind: Property(Status(Bitrate)), style: (fg: "${t.fg.subtle}")),
                              (kind: Text(" kbps"), style: (fg: "${t.fg.base}")),
                              (kind: Text("]"), style: (fg: "${t.fg.base}", modifiers: "Bold"))
                          ],

                          center: [],

                          right: [
                              (kind: Text("[ "), style: (fg: "${t.fg.base}")),

                              (kind: Property(Status(RepeatV2(
                                  on_label: "",
                                  off_label: "",
                                  on_style: (fg: "${t.fg.base}", modifiers: "Underlined"),
                                  off_style: (fg: "${t.fg.subtle}")
                              )))),

                              (kind: Text(" | "), style: (fg: "${t.fg.base}")),

                              (kind: Property(Status(RandomV2(
                                  on_label: "",
                                  off_label: "",
                                  on_style: (fg: "${t.fg.base}", modifiers: "Underlined"),
                                  off_style: (fg: "${t.fg.subtle}")
                              )))),

                              (kind: Text(" | "), style: (fg: "${t.fg.base}")),

                              (kind: Property(Status(ConsumeV2(
                                  on_label: "󰮯",
                                  off_label: "󰮯",
                                  oneshot_label: "󰮯󰇊",
                                  on_style: (fg: "${t.fg.base}", modifiers: "Underlined"),
                                  off_style: (fg: "${t.fg.subtle}")
                              )))),

                              (kind: Text(" | "), style: (fg: "${t.fg.base}")),

                              (kind: Property(Status(SingleV2(
                                  on_label: "󰎤",
                                  off_label: "󰎦",
                                  oneshot_label: "󰇊",
                                  off_oneshot_label: "󱅊",
                                  on_style: (fg: "${t.fg.base}", modifiers: "Underlined"),
                                  off_style: (fg: "${t.fg.subtle}")
                              )))),

                              (kind: Text(" ]"), style: (fg: "${t.fg.base}")),
                          ]
                      ),
                  ],
              ),
          )
        '';
      };
    };
  };
}
