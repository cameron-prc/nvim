local servers = require("config.servers")

return {
    { "tpope/vim-rails",   enabled = servers.ruby.enabled },
    { "tpope/vim-bundler", enabled = servers.ruby.enabled },
}
