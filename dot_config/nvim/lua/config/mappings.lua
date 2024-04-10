vim.g.mapleader = ","
vim.g.maplocalleader = ","

--
-- Näppäinasetuksia
-- HUOM. Pakettikohtaiset asetukset ovat lua/paketit.lua -tiedostossa.
--
vim.api.nvim_set_keymap('n', '<C-b>', ':b <Tab>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<C-n>', ':bnext<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<C-p>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-Space>', '<C-x><C-o>', { noremap = true }) -- Omnifunc
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
--vim.api.nvim_set_keymap('t', '<leader><Esc>', '<C-\\><C-n>', { noremap = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
