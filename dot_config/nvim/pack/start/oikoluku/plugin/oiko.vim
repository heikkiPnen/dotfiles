" in plugin/muistilaput.vim
"
if exists('g:loaded_muistilaput') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults
noremap <leader>z :lua require'muistilaput'.muistilaput()<cr>
" command to run our plugin
"command! MLalusta lua require'muistilaput'.muistilaput()
"command! MLteeLinkki lua require'muistilaput'.tee_md_linkki()
"command! MLavaaLinkki lua require'muistilaput'.avaa_linkki()

"noremap <leader>z :MLalusta<cr>
let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_muistilaput = 1
