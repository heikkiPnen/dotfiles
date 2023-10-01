def fo [] {
  let fzfoutput = fzf --height 60% --layout reverse --border | str trim
  if (not ($fzfoutput | is-empty)) {
    start $fzfoutput
  }
}
