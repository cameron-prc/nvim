return {
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = { "mason-org/mason.nvim" },
        opts = {
            ensure_installed = { "prettier" },
        },
    },
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        opts = {
            formatters_by_ft = {
                typescript = { "prettier" },
                html       = { "prettier" },
                css        = { "prettier" },
                javascript = { "prettier" },
                json       = { "prettier" },
            },
            format_on_save = {
                timeout_ms = 2000,
                lsp_fallback = true,
            },
        },
    },
}
