vim.g.mapleader = ","
vim.g.maplocalleader = ","

--
-- Näppäinasetuksia
-- verbose map <insert mapping> kertoo missä setus on tehy, jos on
-- HUOM. Pakettikohtaiset asetukset ovat lua/paketit.lua -tiedostossa.
--
local opts = { noremap = true, silent = true }
local keymap= vim.api.nvim_set_keymap 

keymap('n', '<C-b>', ':b <Tab>', opts)
keymap('n', 'Q', ':q!<cr>', opts)
--vim.api.nvim_set_keymap('n', '<C-n>', ':bnext<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<C-p>', ':bprevious<CR>', { noremap = true, silent = true })
keymap('i', '<C-Space>', '<C-x><C-o>', { noremap = true }) -- Omnifunc
keymap('i', 'jj', '<Esc>', { noremap = true })
--vim.api.nvim_set_keymap('t', '<leader><Esc>', '<C-\\><C-n>', { noremap = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
-- Allaoleva toimii mutta esim Alt-7 ei.
--vim.api.nvim_set_keymap('i','<Ctrl-q>',"{",{}) 

