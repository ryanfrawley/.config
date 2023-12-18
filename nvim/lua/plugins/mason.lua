return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        dependencies = {
            "nvim-lspconfig",
        },

        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "mason.nvim",
        },

        config = function()
            require("mason").setup({})
            local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup({
                ensure_installed = {
                }
            })

            mason_lspconfig.setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end
            })
        end
    }
}
