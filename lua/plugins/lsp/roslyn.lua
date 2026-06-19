local servers = require("config.servers")

return {
    "seblyng/roslyn.nvim",
    enabled = servers.csharp.enabled,
    config = function()
        require("roslyn").setup({})
        vim.lsp.config("roslyn", {
            cmd = {
                vim.fn.expand("~/.dotnet/tools/roslyn-language-server.cmd"),
                "--logLevel=Information",
                "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.log.get_filename()),
                "--stdio",
            },
        })
    end,
}
