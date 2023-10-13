
set -a fish_function_path /home/heikki/.config/fish/omat_funkt

if status is-interactive
# Vi -sidokset on määritelty .inpurc:ssä
    fish_vi_key_bindings
    #zoxide init fish | source
    starship init fish | source
    # fzf.fish plugin:
    set fzf_directory_opts --bind "ctrl-o:execute(nvim {} &> /dev/tty)"
    set fzf_preview_dir_cmd eza --all --color=always
    fzf_configure_bindings --history=\ch  # c-r on varattu mcfly:lle
    #mcfly init fish | source
    set -gx ATUIN_NOBIND "true"
    atuin init fish --disable-up-arrow | source
    # bind to ctrl-r in normal and insert mode, add any other bindings you want here too
    bind \cr _atuin_search
    bind -M insert \cr _atuin_search
end

