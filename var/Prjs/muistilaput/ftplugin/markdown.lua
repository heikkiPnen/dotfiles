-- Näppäinlyhenteet
local function aseta_mappings()
  local mappings = {
    ['<leader>mt'] = { 'tee_md_linkki()', '"Tee linkki"' },
    ['<leader>ma'] = { 'avaa_linkki()', '"Avaa linkki"' },
    ['<leader><cr>'] = { 'avaa_linkki()', '"Avaa linkki"' }
    --m = 'move_cursor()'
  }
  for k, v in pairs(mappings) do

    local v1 = ':lua require("muistilaput").' .. v[1] .. '<cr>'
    local v2 = { desc = v[2] }
    vim.api.nvim_set_keymap('n', k, v1, { noremap = true, desc = "v2" })
  end
end

-- Komennot
local aseta_komennot = function()
  local komennot = {
    --MLalusta = 'lua muistilaput()', Ei tarvita, suoritetaan aina.
    MLteeLinkki = { 'tee_md_linkki()', 'Tee md -linkki' },
    MLavaaLinkki = { 'avaa_linkki()', 'Avaa linkki' }
  }
  for k, v in pairs(komennot) do
    local lua_cmd = ':lua require("muistilaput").' .. v[1] .. '<cr>'
    vim.api.nvim_create_user_command(k, lua_cmd, { desc = v[2] })
  end
end
aseta_mappings()
aseta_komennot()
