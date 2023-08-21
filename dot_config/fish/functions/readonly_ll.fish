function ll --wraps='exa -las new --header --icons' --description 'alias ll=exa -las new --header --icons'
  exa -las new --header --icons $argv; 
end
