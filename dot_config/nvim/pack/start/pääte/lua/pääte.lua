
local avaa_term = function()
    local puskuri_nr = vim.api.nvim_get_current_buf()
    --local kahva = vim.api.nvim_open_win(ch_id, true, {relative='win', width=20, height=10, bufpos={100,10}})
    vim.api.nvim_command('terminal')
    print(puskuri_nr)
end

-- Näppäinlyhenteet
local aseta_mappings = function ()
  local mappings = {
    ['<leader>p'] = 'avaa_term()',
  }
  for k,v in pairs(mappings) do
    vim.api.nvim_set_keymap('n', k, ':lua require"pääte".'..v..'<cr>', {
        nowait = true, noremap = true, silent = true
      })
  end
end

local pääte = function()
    aseta_mappings()
end

return {
   avaa_term = avaa_term,
   pääte = pääte
}
