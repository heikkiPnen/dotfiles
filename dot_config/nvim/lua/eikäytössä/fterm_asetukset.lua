local M = {
  "numToStr/FTerm.nvim",
}
M.config = function()
  require("FTerm").setup({
    border = 'single',
    cmd = '/usr/bin/fish',
    dimensions = {
      height = 0.9,
      width = 0.9,
    },
  })
  vim.keymap.set('n', '<leader>tt', '<cmd>lua require("FTerm").toggle()<cr>', { desc = "Terminal toggle" })
  vim.keymap.set('t', '<leader>tt', '<cmd>lua require("FTerm").toggle()<cr>', { desc = "Terminal toggle" })
  vim.api.nvim_create_user_command('FTermOpen', require('FTerm').open, { bang = true })
  vim.api.nvim_create_user_command('FTermClose', require('FTerm').close, { bang = true })
  vim.api.nvim_create_user_command('FTermExit', require('FTerm').exit, { bang = true })
  -- Lazygit
  --vim.api.nvim_create_user_command('Lazygit', require('FTerm').run('lazygit'), { bang=true })

  vim.api.nvim_create_user_command('Lazygit', function()
    require('FTerm').run('lazygit')
  end, { bang = true })
end

return M
