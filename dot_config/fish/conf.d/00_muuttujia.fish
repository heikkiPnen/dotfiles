
set -a fish_function_path /home/heikki/.config/fish/omat_funkt
set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

if status is-interactive
# Vi -sidokset on määritelty .inpurc:ssä
    fish_vi_key_bindings
    #zoxide init fish | source
    starship init fish | source
    # fzf.fish plugin:
    set fzf_directory_opts --bind "ctrl-o:execute(nvim {} &> /dev/tty)"
    set fzf_preview_dir_cmd eza --all --color=always
    #fzf_configure_bindings --history=\ch  # c-r on varattu mcfly:lle
    #mcfly init fish | source
    #set -g GTRASH_HOME_TRASH_DIR "~/.local/share/Trash"
    #set -g GTRASH_ONLY_HOME_TRASH "true"
end

