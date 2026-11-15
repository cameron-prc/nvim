# Neovim Config

Personal config built on [lazy.nvim](https://github.com/folke/lazy.nvim). Plugins are self-bootstrapped on first launch.

## Requirements

- Neovim 0.11+
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
| `pyright` | Python LSP |
| `prettier` | Formatter (TS, JS, HTML, CSS, JSON) |

## Keymaps

Leader is `\`. Modes: `n` normal, `v` visual, `x` visual (no select), `o` operator-pending, `t` terminal, `c` command-line.

Plugin-independent keymaps live in `lua/config/keymaps.lua`, LSP keymaps in `lua/config/autocmds.lua`, and plugin keymaps in each plugin's `keys` table under `lua/plugins/`.

### General

| Key | Mode | Action |
|-----|------|--------|
| `<Esc><Esc>` | n | Clear search highlight |
| `<Esc><Esc>` | t | Exit terminal mode |
| `<C-N>` | n | Next buffer |
| `<C-P>` | n | Previous buffer |
| `<leader>lb` | n | List buffers and prompt for one to switch to |
| `<leader>?` | n | Show buffer-local keymaps (which-key) |

### Find (fzf-lua)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | n | Find files |
| `<leader>fg` | n | Live grep |
| `<leader>fb` | n | Find buffers |
| `<leader>fh` | n | Help tags |
| `<leader>fr` | n | Resume last search |

### Explorer (neo-tree)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>fe` / `<leader>e` | n | Toggle explorer at the project root |
| `<leader>fE` / `<leader>E` | n | Toggle explorer at the cwd |
| `<leader>ge` | n | Toggle git status explorer |
| `<leader>be` | n | Toggle buffer explorer |

### LSP

Set buffer-locally when a language server attaches. `gd` and `gi` are only mapped when the server supports them.

| Key | Mode | Action |
|-----|------|--------|
| `gd` | n | Go to definition |
| `gi` | n | Go to implementation |
| `<leader>cn` | n | Rename symbol |
| `<leader>ca` | n, v | Code action |
| `<leader>cr` | n | References |
| `<leader>ci` | n | Implementation |

### Diagnostics and symbols (Trouble)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>xx` | n | Toggle diagnostics |
| `<leader>xX` | n | Toggle diagnostics for the current buffer |
| `<leader>xL` | n | Toggle location list |
| `<leader>xQ` | n | Toggle quickfix list |
| `<leader>cs` | n | Toggle symbols |
| `<leader>cl` | n | Toggle LSP definitions / references panel |

### Motion (flash)

| Key | Mode | Action |
|-----|------|--------|
| `s` | n, x, o | Flash jump |
| `S` | n, x, o | Flash Treesitter |
| `r` | o | Remote Flash |
| `R` | o, x | Treesitter search |
| `<C-s>` | c | Toggle Flash search |

### Git (Neogit)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>gg` | n | Open Neogit |

### Claude Code

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ac` | n | Toggle Claude |
| `<leader>af` | n | Focus Claude |
| `<A-a>` | n, t | Focus Claude |
| `<leader>ar` | n | Resume a Claude session |
| `<leader>aC` | n | Continue the last Claude session |
| `<leader>am` | n | Select Claude model |
| `<leader>ab` | n | Add current buffer to Claude |
| `<leader>as` | v | Send selection to Claude |
| `<leader>as` | n | Add file to Claude (file explorer buffers only) |
| `<leader>aa` | n | Accept diff |
| `<leader>ad` | n | Deny diff |

### Completion (blink.cmp)

Uses the `default` preset; see `:h blink-cmp-config-keymap`.
