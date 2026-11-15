-- LSP keymaps, set buffer-locally when a server attaches.
-- The <leader>c* maps mirror the built-in grn / gra / grr / gri.
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = args.buf, desc = desc })
    end

    if client and client:supports_method("textDocument/definition") then
      map("n", "gd", vim.lsp.buf.definition, "LSP definition")
    end
    if client and client:supports_method("textDocument/implementation") then
      map("n", "gi", vim.lsp.buf.implementation, "LSP implementation")
    end

    map("n", "<leader>cn", vim.lsp.buf.rename, "Rename symbol")
    map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("n", "<leader>cr", vim.lsp.buf.references, "References")
    map("n", "<leader>ci", vim.lsp.buf.implementation, "Implementation")
  end,
})
