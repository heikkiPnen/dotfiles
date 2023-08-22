-- Lähde:
-- https://github.com/folke/dot/blob/master/config/nvim/lua/config/plugins/dap.lua
local M = {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "rcarriga/nvim-dap-ui",

      config = function()
        require("dapui").setup()
      end,
    },
    { "jbyuki/one-small-step-for-vimkind" },
  },
}
return M
