
vim.o.cmdheight = 0
vim.wo.number = true --Show current line number
vim.wo.relativenumber = true
--vim.o.autochdir = true            -- Automaattisesti vaihtaa hakemiston
vim.o.hlsearch = true  -- Värjää kaikki löydetyt
vim.o.scrolloff = 4    -- Pitää kursorin poissa ylä/alareunasta
vim.o.showmode = true
vim.o.tabstop = 2      -- \t välilyönteinä
vim.o.softtabstop = 2  -- <tab> tai <backspace> välilyönteinä
vim.o.shiftwidth = 2   -- sisennys välilyönteinä
vim.o.expandtab = true -- ei enää \t -merkkejä
vim.o.hidden = true
--vim.o.omnifunc = "syntaxcomplete#Complete"
vim.o.termguicolors = true
--vim.cmd [[set termguicolors]]
vim.o.background = 'dark'
--vim.cmd("colorscheme kanagawabones")
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.inccommand = "nosplit" -- live substitution
--vim.o.syntax = "on"
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.timeoutlen = 500
-- Fontit määritelty gui.lua:ssa.
vim.o.shell = "/usr/bin/fish"
