local M = {
  'rebelot/terminal.nvim',
}


M.config = function()
  require("terminal").setup({
    layout = { open_cmd = "botright new" },
    -- layout = { open_cmd = "float" },
    cmd = { "/usr/bin/fish" },
    autoclose = false,
  })

  local lazygit = require("terminal").terminal:new({
    layout = { open_cmd = "float", height = 0.9, width = 0.9 },
    cmd = { "lazygit" },
    autoclose = true,
  })
  vim.env["GIT_EDITOR"] = "nvr -cc close -cc split --remote-wait +'set bufhidden=wipe'"
  vim.api.nvim_create_user_command("Lazygit", function(args)
    lazygit.cwd = args.args and vim.fn.expand(args.args)
    lazygit:toggle(nil, true)
  end, { nargs = "?" })

  local term_map = require("terminal.mappings")
  vim.keymap.set({ "n", "x" }, "<leader>ts", term_map.operator_send, { expr = true, desc = "operator send" })
  vim.keymap.set("n", "<leader>tt", term_map.toggle, { desc = "toggle" })
  vim.keymap.set("n", "<leader>tT", term_map.toggle({ open_cmd = "enew" }),{desc="toggle enew"})
  vim.keymap.set("n", "<leader>tr", term_map.run, {desc="run"}, {desc="run"})
  vim.keymap.set("n", "<leader>tR", term_map.run(nil, { layout = { open_cmd = "enew" } }), {desc="enew run"})
  vim.keymap.set("n", "<leader>tk", term_map.kill, {desc="kill"})
  vim.keymap.set("n", "<leader>tn", term_map.cycle_next, {desc="cycle next"})
  vim.keymap.set("n", "<leader>tp", term_map.cycle_prev, {desc="cycle prev"})
  vim.keymap.set("n", "<leader>tl", term_map.move({ open_cmd = "belowright vnew" }), {desc="belowright vnew"})
  vim.keymap.set("n", "<leader>tL", term_map.move({ open_cmd = "botright vnew" }), {desc="botright vnew"})
  vim.keymap.set("n", "<leader>th", term_map.move({ open_cmd = "belowright new" }), {desc="belowright new"})
  vim.keymap.set("n", "<leader>tH", term_map.move({ open_cmd = "botright new" }), {desc="botright new"})
  vim.keymap.set("n", "<leader>tf", term_map.move({ open_cmd = "float" }), {desc="float"})
end

return M
