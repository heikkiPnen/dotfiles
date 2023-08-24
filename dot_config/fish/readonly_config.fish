if status is-interactive
# Vi -sidokset on määritelty .inpurc:ssä
    fish_vi_key_bindings
    zoxide init fish | source
    starship init fish | source
    mcfly init fish | source
end

