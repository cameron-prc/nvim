return {
    lua        = { enabled = true, mason = "lua_ls",    parsers = { "lua" } },
    ruby       = { enabled = true, mason = "ruby_lsp",  parsers = { "ruby" } },
    csharp     = { enabled = true,                      parsers = { "c_sharp" } },
    typescript = { enabled = true, mason = "ts_ls",     parsers = { "typescript", "javascript" } },
    html       = { enabled = true, mason = "html",      parsers = { "html" } },
    css        = { enabled = true, mason = "cssls",     parsers = { "css" } },
    angular    = { enabled = true, mason = "angularls", parsers = {} },
}
