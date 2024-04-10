
require("config.mappings")
require("config.lazy_asetukset")
require("config.options")
require("config.gui")
vim.g.neomux_default_shell = "/usr/bin/fish"
vim.cmd [[ set jumpoptions += "stack" ]] -- Katso helpistä
-- Lsp autoformat (*:n sijalla voi olla <buffer>)
--vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

vim.cmd [[
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
]]
--vim.cmd( [[-command! Testi lua require("testi").Testi.copy_paste()]] )
--require("paketit")
require('telekasten').setup({
  home = vim.fn.expand("~/Tekstit/md/Zettelkasten"), -- Put the name of your notes directory here
})
require("oil").setup()
