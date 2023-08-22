local M = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
}
M.config = function()
    require("mason").setup({
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    })
    require("mason-lspconfig").setup()
end
return M
