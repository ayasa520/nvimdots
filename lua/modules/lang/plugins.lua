local lang = {}
local conf = require("modules.lang.config")

<<<<<<< HEAD
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
=======
lang["fatih/vim-go"] = {
	opt = true,
	ft = "go",
	run = ":GoInstallBinaries",
	config = conf.lang_go,
}
lang["rust-lang/rust.vim"] = { opt = true, ft = "rust" }
lang["simrat39/rust-tools.nvim"] = {
	opt = true,
	ft = "rust",
	config = conf.rust_tools,
	requires = { { "nvim-lua/plenary.nvim", opt = false } },
>>>>>>> upstream/main
}
-- lang["kristijanhusak/orgmode.nvim"] = {
--     opt = true,
--     ft = "org",
--     config = conf.lang_org
-- }
<<<<<<< HEAD
lang["git@github.com:iamcco/markdown-preview.nvim"] = {
    opt = true,
    ft = "markdown",
    run = "cd app && yarn install",
    cmd = {"MarkdownPreview","MarkdownPreviewStop","MarkdownPreviewToggle"}
}
lang["git@github.com:chrisbra/csv.vim"] = {opt = true, ft = "csv"}
=======
lang["iamcco/markdown-preview.nvim"] = {
	opt = true,
	ft = "markdown",
	run = "cd app && yarn install",
}
lang["chrisbra/csv.vim"] = { opt = true, ft = "csv" }
>>>>>>> upstream/main
return lang
