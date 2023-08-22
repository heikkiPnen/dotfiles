local M = {
  "cbochs/portal.nvim",
  -- Optional dependencies
  --  dependencies = {
  --    "cbochs/grapple.nvim",
  --    "ThePrimeagen/harpoon"
  --  },
}


M.config = function()
  --  local wk = require("which-key")
  --  wk.register({
  --    o = { "<cmd>lua require('portal').jump_backward()<cr>", "Hyppää taaksepäin" },
  --    i = { "<cmd>lua require('portal').jump_forward()<cr>", "Hyppää eteenpäin" },
  --  }, { prefix = "<leader>" })

  vim.keymap.set("n", "<leader>o", "<cmd>Portal jumplist backward<cr>", {})
  vim.keymap.set("n", "<leader>i", "<cmd>Portal jumplist forward<cr>", {})
end

return M
