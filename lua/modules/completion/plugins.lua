local completion = {}
local conf = require("modules.completion.config")

completion["git@github.com:neovim/nvim-lspconfig"] = {
    opt = true,
    event = "BufReadPre",
    config = conf.nvim_lsp
}
completion["git@github.com:williamboman/nvim-lsp-installer"] = {
    opt = true,
    after = "nvim-lspconfig"
}
completion["git@github.com:tami5/lspsaga.nvim"] = {opt = true, after = "nvim-lspconfig"}
completion["git@github.com:kosayoda/nvim-lightbulb"] = {
    opt = true,
    after = "nvim-lspconfig",
    config = conf.lightbulb
}
completion["git@github.com:Jyc-Code/DoxygenToolkit.vim"] = {after = "nvim-lspconfig"}
completion["git@github.com:ray-x/lsp_signature.nvim"] = {opt = true, after = "nvim-lspconfig"}
completion["git@github.com:hrsh7th/nvim-cmp"] = {
    config = conf.cmp,
    event = "InsertEnter",
    requires = {
        {"git@github.com:saadparwaiz1/cmp_luasnip", after = "LuaSnip"},
        {"git@github.com:hrsh7th/cmp-nvim-lsp", after = "cmp_luasnip"},
        {"git@github.com:hrsh7th/cmp-nvim-lua", after = "cmp-nvim-lsp"},
        {"git@github.com:andersevenrud/compe-tmux", branch = "cmp", after = "cmp-nvim-lua"},
        {"git@github.com:hrsh7th/cmp-path", after = "compe-tmux"},
        {"git@github.com:f3fora/cmp-spell", after = "cmp-path"},
        {"git@github.com:hrsh7th/cmp-buffer", after = "cmp-spell"}, {
            'git@github.com:tzachar/cmp-tabnine',
            run = './install.sh',
            after = 'cmp-spell',
            config = conf.tabnine
        }
    }
}
completion["git@github.com:L3MON4D3/LuaSnip"] = {
    after = "nvim-cmp",
    config = conf.luasnip,
    requires = "rafamadriz/friendly-snippets"
}
completion["git@github.com:windwp/nvim-autopairs"] = {
    after = "nvim-cmp",
    config = conf.autopairs
}
completion["git@github.com:github/copilot.vim"] = {opt = true, cmd = "Copilot"}

return completion
