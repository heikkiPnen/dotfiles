" in plugin/pääte.vim
"
if exists('g:loaded_term') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults
noremap <leader>p :lua require'pääte'.pääte()<cr>

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_term = 1
