local M = {
   'VonHeikemen/lsp-zero.nvim',
   branch = 'v3.x',
   dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {'williamboman/mason.nvim', },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
   }
}


M.config = function()
   local lsp = require('lsp-zero').preset({})

   lsp.on_attach(function(client, bufnr)
      lsp.default_keymaps({ buffer = bufnr })

      vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { buffer = true, desc = 'lsp Hover' })
      vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', { buffer = true, desc = 'lsp Definition' })
      vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', { buffer = true, desc = 'lsp Declaration' })
      vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>',
         { buffer = true, desc = 'lsp Implementation' })
      vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>',
         { buffer = true, desc = 'lsp Type definition' })
      vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', { buffer = true, desc = 'lsp References' })
      vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', { buffer = true, desc = 'lsp Signature' })
      vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', { buffer = true, desc = 'lsp Rename' })
      vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>',
         { buffer = true, desc = 'lsp Format' })
      vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', { buffer = true, desc = 'lsp Code action' })

      vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', { buffer = true, desc = 'lsp Open float' })
      vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', { buffer = true, desc = 'lsp Goto prev' })
      vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', { buffer = true, desc = 'lsp Goto next' })
   end)

   require 'lspconfig'.lua_ls.setup {
      settings = {
         Lua = {
            diagnostics = {
               -- Get the language server to recognize the `vim` global
               globals = { 'vim', 'vis' },
            },
         },
      },
   }
   lsp.setup()

   -- Versio 3:n muutokset (ks. lsp-zero migration)
   local lsp_zero = require('lsp-zero')

   require('mason').setup({})
   require('mason-lspconfig').setup({
      handlers = {
         function(server_name)
            require('lspconfig')[server_name].setup({})
         end,
         -- Lisäasetus lua:lle
         lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
         end,
      }
   })
end
return M
