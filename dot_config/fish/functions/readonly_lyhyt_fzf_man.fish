function lyhyt_fzf_man
  printf '\n'
  printf 'Vanhat sidokset Uudet\n'
  printf '\n'
  printf  '%s\t\t%s\t\t%s\n'  Ctrl-t Ctrl-o 'Etsi tiedosto.'
  printf  '%s\t\t%s\t\t%s\n'    Ctrl-r Ctrl-r 'Etsi komentohistoriasta.'
  printf  '%s\t\t%s\t\t%s\n'    Alt-c Alt-c 'Siirry  hakemistoon.' 
  printf  '%s\t%s\t%s\n'    Alt-Shift-c Alt-Shift-c 'Kuin yllä, mutta ml. piilotetut.'
  printf  '%s\t\t%s\t\t%s\n'    Ctrl-o Alt-o 'Avaa tiedosto/hakemisto oletuseditorilla ($EDITOR).'
  printf  '%s\t\t%s\t%s\n'    Ctrl-g Alt-Shift-o 'Avaa tiedosto/hakemisto xdg-open -ohjelmalla (gnvim).'
end

