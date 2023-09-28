
function parufind -d "pacman fzf"
  # Lähde:
  # https://wiki.archlinux.org/title/Fzf#Arch_specific_fzf_uses
  #
  paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro paru -S
end
