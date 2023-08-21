function htm2md
  for t in $argv            
    set tulos (string replace html md $t)
    pandoc -f html -t markdown -o $tulos $t  
    echo "$t -> $tulos" 
  end
end

