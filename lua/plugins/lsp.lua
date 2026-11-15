local languages = require("config.languages")

local mason_servers = vim.tbl_values(vim.tbl_map(
  function(s)
    return s.mason
  end,
  vim.tbl_filter(function(s)
    return s.enabled and s.mason
  end, languages)
))

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
    },
  },
  {
    "neovim/nvim-lspconfig",
  },
}
