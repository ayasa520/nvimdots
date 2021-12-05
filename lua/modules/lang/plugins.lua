local lang = {}
local conf = require("modules.lang.config")

lang['git@github.com:fatih/vim-go'] = {
    opt = true,
    ft = 'go',
    run = ':GoInstallBinaries',
    config = conf.lang_go
}
lang["git@github.com:rust-lang/rust.vim"] = {opt = true, ft = "rust"}
lang["git@github.com:simrat39/rust-tools.nvim"] = {
    opt = true,
    ft = "rust",
    config = conf.rust_tools,
    requires = {{"nvim-lua/plenary.nvim", opt = false}}
}
lang["git@github.com:kristijanhusak/orgmode.nvim"] = {
    opt = true,
    ft = "org",
    config = conf.lang_org
}
lang["git@github.com:iamcco/markdown-preview.nvim"] = {
    opt = true,
    ft = "markdown",
    run = "cd app && yarn install"
}
return lang
