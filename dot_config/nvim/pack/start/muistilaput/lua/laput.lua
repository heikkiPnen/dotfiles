require("string")
require("os")
--require("lfs") ei löytynyt
--
---- Lisää tiedostonimeen päivämäärä
--
local LAPPU_DIR = '/home/heikki/Tekstit/md'
--local LAPPU_DIR = '/home/heikki/Tekstit/md/Zettelkasten'
local INDEX_SIVU = "index.md"
local TIEDOSTO_PAATE = '.md'

local tee_tiedNimi = function(str)
    local reg = string.gsub(str, " ", "_")
    reg =reg..os.date('_%Y%m%d')..TIEDOSTO_PAATE
    vim.fn.setreg('z', reg)
end


-- Tehdään markdown linkki sanan tai hakasuluissa olevan tekstin perusteella.
local tee_md_linkki = function()
    vim.fn.setreg('z', '')
    vim.cmd('normal "zyi]')
    local zReg = vim.fn.getreg("z")
    if zReg ~= "" then
        -- Teksti hakasuluissa
        vim.cmd([[normal f]a()]])
    else 
        -- Pelkkä teksti
        vim.cmd('normal "zdiwi[]')
        zReg = vim.fn.getreg("z")
        vim.cmd([[ normal h"zpEa() ]])
        vim.cmd([[ normal 2h ]])
    end
    -- Liitetään tiedNimi sulkuihin
    tee_tiedNimi(zReg)
    vim.cmd( [[normal h"zp]] )
    vim.fn.setreg('z', '')
end
---- Hakemisto
local nykyinen_hakemisto = function()
    local hak = ''
    --local polku = vim.fn.expand('%:p') -- nykyisen tiedoston full path -nimi
    local polku=vim.api.nvim_buf_get_name(0) -- sama kuin yllä
    hak = string.match(polku,(".+/"))
    return hak
end
-- Verrataan hakemistoja

local sama_dir = function(dir0)
    local samat=false
    return function(dir1)
        if dir1==nil then
            print(samat)
            return samat
        end
        if dir0~=dir1 then
            dir0=dir1
            samat = false
        else samat = true
            print(samat) end
    end
end

--local sama_hakemisto = sama_dir(nykyinen_hakemisto())

-- Vaihdetaan hakemisto
local vaihda_hakemisto= function()
    local hak = nykyinen_hakemisto()
    --if not sama_hakemisto(hak) then
        vim.cmd('cd '..hak)
    --end
end

-- Avataan md -linkki.
-- Tätä ei suoriteta mikäli tiedosto vaihdetaan jumplist:in kautta (Ctrl-o).
local avaa_linkki = function()
    vim.cmd("m'")  -- talletetaan paikka jumplist:iin
    vim.cmd('normal F[f("zyi)')
    local tied_nimi = vim.fn.getreg("z")
    if string.find(tied_nimi, TIEDOSTO_PAATE..'$') then
    else
        tied_nimi = tied_nimi..TIEDOSTO_PAATE
    end
    vim.cmd('cd '..nykyinen_hakemisto()) -- Siis nyt avoimen tiedoston hakemistoon
    --sama_hakemisto()
    vim.cmd('e '..tied_nimi)             -- Tämä siis sijaitsee suhteessa nykyiseen hakemistoon
    --sama_hakemisto(nykyinen_hakemisto())
end

-- Näppäinlyhenteet
local function aseta_mappings()
  local mappings = {
    ['<leader>z'] = 'muistilaput()',
    ['<cr>'] = 'avaa_linkki()',
    m = 'move_cursor()'
  }
  for k,v in pairs(mappings) do
    vim.api.nvim_set_keymap('n', k, ':lua require"muistilaput".'..v..'<cr>', {
        nowait = true, noremap = true, silent = true
      })
  end
end

-- Komennot
local aseta_komennot = function()
    local komennot = {
	--MLalusta = 'lua muistilaput()', Ei tarvita, suoritetaan aina.
	MLteeLinkki = 'tee_md_linkki()',
	MLavaaLinkki = 'avaa_linkki()'
    }
    for k,v in pairs(komennot) do
	vim.api.nvim_command('command! '..k..' :lua require"muistilaput".'..v..'<cr>')
    end
end

-- Main
local muistilaput = function()
    local lappu_dir = LAPPU_DIR
    local index_sivu = INDEX_SIVU
    aseta_mappings()
    aseta_komennot()
    vim.cmd('cd '..lappu_dir)
    vim.cmd("e "..index_sivu)
end

return {
    muistilaput = muistilaput,
    tee_md_linkki = tee_md_linkki,
    avaa_linkki = avaa_linkki
}
