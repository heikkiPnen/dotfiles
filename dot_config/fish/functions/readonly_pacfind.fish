
function pacfind -d "pacman fzf"
  # Lähde:
  # https://wiki.archlinux.org/title/Fzf#Arch_specific_fzf_uses
  #
  pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S
end
