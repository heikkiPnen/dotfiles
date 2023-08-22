-- python TS vaatii
-- nix-shell -p gcc --komennon toimiakseen
--  googleta TSUpdaten virheilmoitus
local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
}

M.config = function()
    require 'nvim-treesitter.configs'.setup {
        auto_install = true,
        -- highlight = {
        --     enable = true, -- false will disable the whole extension
        --     disable = {}, -- list of language that will be disabled
        -- },
        indent = {
            enable = true
        },
    }
    require'nvim-treesitter.configs'.setup {
      -- Modules and its options go here
      highlight = { enable = true },
      incremental_selection = { enable = true },
      textobjects = { enable = true },
    }
end
return M
