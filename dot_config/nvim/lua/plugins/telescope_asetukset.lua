local M = {
  "nvim-telescope/telescope.nvim",
  cmd = { "Telescope" },

  dependencies = {
    "jvgrootveld/telescope-zoxide",
    "nvim-telescope/telescope-frecency.nvim",
    "nvim-telescope/telescope-dap.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    --"benfowler/telescope-luasnip",
  },
}
-- Auto-session palikka
-- ---------------------------------------------------------
--require("telescope").load_extension("session-lens")
--require('session-lens').setup {
--    prompt_title = 'Omat sessiot',
--}
--vim.api.nvim_set_keymap("n", "<leader>fs", ":lua require('session-lens').search_session()<cr>", {noremap = true, silent = true})
--
--
----  nvim-telescope/telescope-frecency.nvim
----  --------------------------------------------------------
--require"telescope".load_extension("frecency")
--vim.api.nvim_set_keymap("n", "<leader>fr", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true, desc = '"Älykäs" lajittelu'})
--
--require('telescope').load_extension('luasnip')
--
--local omia = {}

M.config = function()
  require "telescope".load_extension("frecency")
  local center_list = require 'telescope.themes'.get_dropdown({
    prompt_prefix = 'fd>',
    previewer = false,
  })

  require('telescope').setup {
    defaults = {
      sorting_strategy = "ascending",
    },
    pickers = {
      jumplist = {
        theme = "dropdown",
      }
    },
    pickers = {
      find_files = {
        find_command = { "fd", "--hidden", "--type", "f", "--strip-cwd-prefix" }
      },
    },
  }

end

M.fd_etsi = function()
  local opts = omia.center_list
  require 'telescope.builtin'.fd(opts)
end
return M
