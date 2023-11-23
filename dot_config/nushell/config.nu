# Nushell Config File
#
# version = "0.84.0"

# For more information on defining custom themes, see
# https://www.nushell.sh/book/coloring_and_theming.html
# And here is the theme collection
# https://github.com/nushell/nu_scripts/tree/main/themes
#let light_theme = 

# External completer example
# let carapace_completer = {|spans|
#     carapace $spans.0 nushell $spans | from json
# }

# The default config record. This is where much of your global configuration is setup.
$env.config = {
    show_banner: false # true or false to enable or disable the welcome banner at startup

    ls: {
        use_ls_colors: true # use the LS_COLORS environment variable to colorize output
        clickable_links: true # enable or disable clickable links. Your terminal has to support links.
    }

    rm: {
        always_trash: true # always act as if -t was given. Can be overridden with -p
    }

    #cd: {
    #    abbreviations: false # allows `cd s/o/f` to expand to `cd some/other/folder`
    #}

    table: {
        mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
        index_mode: always # "always" show indexes, "never" show indexes, "auto" = show indexes when a table has "index" column
        show_empty: true # show 'empty list' and 'empty record' placeholders for command output
        padding: { left: 1, right: 1 } # a left right padding of each column in a table
        trim: {
            methodology: wrapping # wrapping or truncating
            wrapping_try_keep_words: true # A strategy used by the 'wrapping' methodology
            truncating_suffix: "..." # A suffix used by the 'truncating' methodology
        }
        header_on_separator: false # show header text on separator/border line
    }

    # datetime_format determines what a datetime rendered in the shell would look like.
    # Behavior without this configuration point will be to "humanize" the datetime display,
    # showing something like "a day ago."
    datetime_format: {
        # normal: '%a, %d %b %Y %H:%M:%S %z'    # shows up in displays of variables or other datetime's outside of tables
        # table: '%m/%d/%y %I:%M:%S%p'          # generally shows up in tabular outputs such as ls. commenting this out will change it to the default human readable datetime format
    }

    explore: {
        try: {
            border_color: {fg: "white"}
        },
        status_bar_background: {fg: "#1D1F21", bg: "#C4C9C6"},
        command_bar_text: {fg: "#C4C9C6"},
        highlight: {fg: "black", bg: "yellow"},
        status: {
            error: {fg: "white", bg: "red"},
            warn: {}
            info: {}
        },
        table: {
            split_line: {fg: "#404040"},
            selected_cell: {},
            selected_row: {},
            selected_column: {},
            show_cursor: true,
            line_head_top: true,
            line_head_bottom: true,
            line_shift: true,
            line_index: true,
        },
        config: {
            border_color: {fg: "white"}
            cursor_color: {fg: "black", bg: "light_yellow"}
        },
    }

    history: {
        max_size: 100_000 # Session has to be reloaded for this to take effect
        sync_on_enter: true # Enable to share history between multiple sessions, else you have to close the session to write history to file
        file_format: "plaintext" # "sqlite" or "plaintext"
        isolation: false # only available with sqlite file_format. true enables history isolation, false disables it. true will allow the history to be isolated to the current session using up/down arrows. false will allow the history to be shared across all sessions.
    }

    completions: {
        case_sensitive: false # set to true to enable case-sensitive completions
        quick: true    # set this to false to prevent auto-selecting completions when only one remains
        partial: true    # set this to false to prevent partial filling of the prompt
        algorithm: "prefix"    # prefix or fuzzy
        external: {
            enable: true # set to false to prevent nushell looking into $env.PATH to find more suggestions, `false` recommended for WSL users as this look up may be very slow
            max_results: 100 # setting it lower can improve completion performance at the cost of omitting some options
            completer: null # check 'carapace_completer' above as an example
        }
    }

    filesize: {
        metric: true # true => KB, MB, GB (ISO standard), false => KiB, MiB, GiB (Windows standard)
        format: "auto" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, auto
    }

    cursor_shape: {
        emacs: line # block, underscore, line, blink_block, blink_underscore, blink_line (line is the default)
        vi_insert: block # block, underscore, line , blink_block, blink_underscore, blink_line (block is the default)
        vi_normal: underscore # block, underscore, line, blink_block, blink_underscore, blink_line (underscore is the default)
    }

    #color_config: $dark_theme # if you want a more interesting theme, you can replace the empty record with `$dark_theme`, `$light_theme` or another custom record
    use_grid_icons: true
    footer_mode: "25" # always, never, number_of_rows, auto
    float_precision: 2 # the precision for displaying floats in tables
    buffer_editor: "" # command that will be used to edit the current line buffer with ctrl+o, if unset fallback to $env.EDITOR and $env.VISUAL
    use_ansi_coloring: true
    bracketed_paste: true # enable bracketed paste, currently useless on windows
    edit_mode: vi # emacs, vi
    shell_integration: false # enables terminal shell integration. Off by default, as some terminals have issues with this.
    render_right_prompt_on_last_line: false # true or false to enable or disable right prompt to be rendered on last line of the prompt.

    hooks: {
        pre_prompt: [{ null }] # run before the prompt is shown
        pre_execution: [{ null }] # run before the repl input is run
        env_change: {
            PWD: [{|before, after| null }] # run if the PWD environment is different since the last repl input
        }
        display_output: "if (term size).columns >= 100 { table -e } else { table }" # run to display the output of a pipeline
        command_not_found: { null } # return an error message when a command is not found
    }
    menus: []
    keybindings: []
}
alias nv = nvim
use ~/.config/nushell/scripts/historia.nu
source ~/.config/nushell/init/zoxide_init.nu           # Hakemistot
use ~/.cache/starship/init.nu                          # Prompt
source ~/.cache/carapace/init.nu                       # Komennon täydennys, ks. carapace-bin
source ~/.local/share/atuin/init.nu                    # Historia
source /home/heikki/.config/broot/launcher/nushell/br  # File manager
use ~/.config/nushell/themes/gruvbox-material-dark-medium.nu
$env.config = ($env.config | merge {color_config: (gruvbox-material-dark-medium)})
