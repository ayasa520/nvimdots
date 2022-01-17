local completion = {}
local conf = require("modules.completion.config")

completion["git@github.com:neovim/nvim-lspconfig"] = {
    opt = true,
    event = "BufReadPre",
    config = conf.nvim_lsp
}
<<<<<<< HEAD
completion["git@github.com:williamboman/nvim-lsp-installer"] = {
    opt = true,
    after = "nvim-lspconfig"
}
completion["git@github.com:tami5/lspsaga.nvim"] = {
    opt = true,
    after = "nvim-lspconfig",
    config = conf.saga
}

completion["git@github.com:creativenull/efmls-configs-nvim"] = {
    opt = false,
    requires = "neovim/nvim-lspconfig"
}

completion["git@github.com:RishabhRD/nvim-lsputils"] = {
    opt = true,
    after = "nvim-lspconfig",
    config = conf.nvim_lsputils
}
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
<<<<<<< HEAD
        {"git@github.com:lukas-reineke/cmp-under-comparator"},
        {"git@github.com:saadparwaiz1/cmp_luasnip", after = "LuaSnip"},
        -- 就目前的配置而言, LuaSnip 的细节更好, 比如可以做到外部再次跳回 snippet 内部
        -- 但是 LuaSnip 实现一些复杂功能又是及其繁琐
        {"git@github.com:quangnguyen30192/cmp-nvim-ultisnips", after = "ultisnips"},
        {"git@github.com:hrsh7th/cmp-nvim-lsp", after = "cmp_luasnip"},
        {"git@github.com:hrsh7th/cmp-nvim-lua", after = "cmp-nvim-lsp"},
        {"git@github.com:andersevenrud/compe-tmux", after = "cmp-nvim-lua"},
        {"git@github.com:hrsh7th/cmp-path", after = "compe-tmux"},
        {"git@github.com:f3fora/cmp-spell", after = "cmp-path"},
        {"git@github.com:hrsh7th/cmp-buffer", after = "cmp-spell"},
        {"git@github.com:kdheepak/cmp-latex-symbols", after = "cmp-buffer"}
=======
        {"lukas-reineke/cmp-under-comparator"},
        {"saadparwaiz1/cmp_luasnip", after = "LuaSnip"},
        {"hrsh7th/cmp-nvim-lsp", after = "cmp_luasnip"},
        {"hrsh7th/cmp-nvim-lua", after = "cmp-nvim-lsp"},
        {"andersevenrud/cmp-tmux", after = "cmp-nvim-lua"},
        {"hrsh7th/cmp-path", after = "cmp-tmux"},
        {"f3fora/cmp-spell", after = "cmp-path"},
        {"hrsh7th/cmp-buffer", after = "cmp-spell"},
        {"kdheepak/cmp-latex-symbols", after = "cmp-buffer"}
>>>>>>> upstream/main
        -- {
        --     'tzachar/cmp-tabnine',
        --     run = './install.sh',
        --     after = 'cmp-spell',
        --     config = conf.tabnine
        -- }
    }
}
completion["git@github.com:SirVer/ultisnips"] = {
    after = "nvim-cmp",
    config = conf.ultisnips,
    requires = "git@github.com:honza/vim-snippets"
}
completion["git@github.com:L3MON4D3/LuaSnip"] = {
    after = "nvim-cmp",
    config = conf.luasnip,
    requires = "git@github.com:rafamadriz/friendly-snippets"
}
completion["git@github.com:windwp/nvim-autopairs"] = {
    after = "nvim-cmp",
    config = conf.autopairs
}
completion["git@github.com:github/copilot.vim"] = {opt = true, cmd = "Copilot"}

return completion
