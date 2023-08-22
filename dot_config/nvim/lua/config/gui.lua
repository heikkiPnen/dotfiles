--vim.opt.guifont="JetBrains Mono Regular:h16"
vim.opt.guifont = { "JetBrainsMono Nerd Font", ":h15" }
if vim.g.neovide then
  --vim.opt.guifont = { "JetBrains Mono", ":h13" }
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.NeovideMultiGrid = true
  vim.g.remember_window_size = true
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_vfx_particle_density = 7.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 2.0
  vim.g.neovide_cursor_vfx_particle_speed = 10.0
end
