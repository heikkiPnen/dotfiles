-- ----------------------------------------------------------
local M = {
  "kkharji/sqlite.lua",
  "kyazdani42/nvim-web-devicons",
  "Olical/aniseed",
  "rktjmp/lush.nvim", -- zenbones tarvii
  "mcchrish/zenbones.nvim",
  "Eandrju/cellular-automaton.nvim",
  "nikvdp/neomux",
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings()
    end
  },
  -- {
  --   "ggandor/flit.nvim",
  --   config = function()
  --     require("flit").setup {}
  --   end
  -- },
  { "mickael-menu/zk-nvim",
    config = function()
      require("zk").setup({ picker = telescope, })
    end
  },
  { "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").load("wave")
    end
  },
  { dir = "~/var/Prjs/muistilaput" },
}

return M
