function avaa
    xdg-open "$(fd -t f | fzf  --preview 'bat --color=always {}')"
end
