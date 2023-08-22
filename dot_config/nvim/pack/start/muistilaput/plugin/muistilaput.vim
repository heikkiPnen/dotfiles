" in plugin/muistilaput.vim
"
if exists('g:loaded_muistilaput') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults
noremap <leader>ml :lua require'muistilaput'.muistilaput()<cr>
let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_muistilaput = 1
