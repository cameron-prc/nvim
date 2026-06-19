# Neovim Config

Personal config built on [lazy.nvim](https://github.com/folke/lazy.nvim). Plugins are self-bootstrapped on first launch.

## Requirements

- Neovim 0.10+
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (icons throughout)
- C++ compiler (GCC/Clang/MSVC — required by nvim-treesitter to compile parsers)
- Node.js (TypeScript, Angular, HTML, CSS LSPs and prettier)
- .NET SDK (C# via Roslyn)
- Ruby (Ruby LSP)

## External tools

These must be installed manually — Mason does not handle them.

**Roslyn language server** (C#):
```sh
dotnet tool install --global Microsoft.CodeAnalysis.LanguageServer
```

**Claude Code CLI** (claudecode.nvim):
```sh
npm install -g @anthropic-ai/claude-code
```

## Ruby gems

```sh
gem install ruby-lsp ruby-lsp-rails
```

Or add to your project `Gemfile`:
```ruby
group :development do
  gem "ruby-lsp"
  gem "ruby-lsp-rails"
end
```

## Mason-managed (auto-installed)

Mason installs these on first launch — no manual action needed:

| Tool | Purpose |
|------|---------|
| `lua_ls` | Lua LSP |
| `ruby_lsp` | Ruby LSP |
| `ts_ls` | TypeScript / JavaScript LSP |
| `html` | HTML LSP |
| `cssls` | CSS LSP |
| `angularls` | Angular LSP |
| `prettier` | Formatter (TS, JS, HTML, CSS, JSON) |
