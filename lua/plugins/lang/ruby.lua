local languages = require("config.languages")

return {
  { "tpope/vim-rails", enabled = languages.ruby.enabled },
  { "tpope/vim-bundler", enabled = languages.ruby.enabled },
}
