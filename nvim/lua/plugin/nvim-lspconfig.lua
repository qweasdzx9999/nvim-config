return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup {
            ensure_installed = {
                "lua_ls",
                "clangd",
                "pylyzer",
                "rust_analyzer",

            },
            automatic_setup = true, --  添加这一行

        }
    end,
}
