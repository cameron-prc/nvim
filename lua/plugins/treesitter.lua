local servers = require("config.servers")

local base_parsers = { "vim", "vimdoc" }

local server_parsers = vim.tbl_flatten(
    vim.tbl_values(vim.tbl_map(function(s) return s.parsers end, servers))
)

return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        opts = {
            ensure_installed = vim.list_extend(base_parsers, server_parsers),
            highlight = { enable = true },
        },
    },
    {
        "windwp/nvim-ts-autotag",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        opts = {},
    },
}
