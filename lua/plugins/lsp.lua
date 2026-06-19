local servers = require("config.servers")

local mason_servers = vim.tbl_values(vim.tbl_map(
    function(s) return s.mason end,
    vim.tbl_filter(function(s) return s.enabled and s.mason end, servers)
))

local mason_path = vim.fn.stdpath("data") .. "/mason"

return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = mason_servers,
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
                ["angularls"] = function()
                    require("lspconfig").angularls.setup({
                        cmd = {
                            mason_path .. "/bin/ngserver",
                            "--stdio",
                            "--tsProbeLocations",
                            mason_path .. "/packages/typescript-language-server/node_modules/typescript/lib",
                            "--ngProbeLocations",
                            mason_path .. "/packages/angular-language-server/node_modules/@angular/language-server/node_modules",
                        },
                        filetypes = { "typescript", "html", "typescriptreact" },
                    })
                end,
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
    },
}
