local M = { 'folke/which-key.nvim' }

M.config = function()
  local wk = require("which-key")
  
  wk.register({
     ["<leader>t"] = { name = "+terminal" },
     ["<leader>f"] = { name = "+term" },
  })

  wk.register({
    f = {
      f = { "<cmd>Telescope find_files<cr>", "Find files" },
      g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
      m = { "<cmd>Telescope keymaps<cr>", "Key bindings" },
      o = { "<cmd>Telescope oldfiles<cr>", "Old files" },
      b = { "<cmd>Telescope buffers<cr>", "Buffers" },
      h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
      d = { "<cmd>Telescope fd_etsi<cr>", "Fd etsi" },
      z = { "<cmd>Telescope zoxide list<cr>", "Zoxide" },
      j = { "<cmd>Telescope jumplist<cr>", "Find jumps" },
      s = { "<cmd>Telescope search_session<cr>", "Search session" },
      r = { "<cmd>Telescope frecency<cr>", "Älykäs lajittelu" },
    },
  }, { prefix = "<leader>" })

  wk.register({
    ["<C-n>"] = { "<cmd>bnext<cr>", "Seuraava puskuri" },
    ["<C-p>"] = { "<cmd>bprevious<cr>", "Seuraava puskuri" },
    ["<C-Right>"] = { "<cmd>bnext<cr>", "Seuraava puskuri" },
    ["<C-Left>"] = { "<cmd>bprevious<cr>", "Seuraava puskuri" },
  })
  wk.register({
    z = {
      f = { "<cmd>Telekasten find_notes<CR>", "Etsi muistiinpano" },
      g = { "<cmd>Telekasten search_notes<CR>", "Etsi muistiinpanosta" },
      d = { "<cmd>Telekasten goto_today<CR>", "Tämänpäiväiset" },
      z = { "<cmd>Telekasten follow_link<CR>", "Seuraa linkkiä" },
      n = { "<cmd>Telekasten new_note<CR>", "uusi muistiinpano" },
      c = { "<cmd>Telekasten show_calendar<CR>", "Näytä kalenteri" },
      b = { "<cmd>Telekasten show_backlinks<CR>", "Näytä backlinks" },
      I = { "<cmd>Telekasten insert_img_link<CR>", "Liitä kuvalinkki" },
    }
  }, { prefix = "<leader>" })

  wk.operators={qi="TESTI"}
end
return M
