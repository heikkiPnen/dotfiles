local M = {
  'altermo/ultimate-autopair.nvim',
  event = { 'InsertEnter', 'CmdlineEnter' },
  branch = 'v0.6',
  config = function()
    require('ultimate-autopair').setup({
      --Config goes here
    })
  end,
}
return M
