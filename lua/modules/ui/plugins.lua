local ui = {}
local conf = require("modules.ui.config")

ui["git@github.com:kyazdani42/nvim-web-devicons"] = {opt = false}
ui["git@github.com:sainnhe/edge"] = {opt = false, config = conf.edge}
ui["git@github.com:catppuccin/nvim"] = {
	opt = false,
	as = "catppuccin",
	config = conf.catppuccin,
}
ui["git@github.com:rebelot/kanagawa.nvim"] = { opt = false, config = conf.kanagawa }
ui["git@github.com:hoob3rt/lualine.nvim"] = {
    opt = true,
    after = "lualine-lsp-progress",
    config = conf.lualine
}
ui["git@github.com:arkav/lualine-lsp-progress"] = {opt = true, after = "nvim-gps"}
ui["git@github.com:glepnir/dashboard-nvim"] = {opt = true, event = "BufWinEnter"}
ui["git@github.com:kyazdani42/nvim-tree.lua"] = {
    opt = true,
    event = "BufRead",
    cmd = {"NvimTreeToggle", "NvimTreeOpen"},
    config = conf.nvim_tree
}
ui["git@github.com:lewis6991/gitsigns.nvim"] = {
    opt = true,
    event = {"BufRead", "BufNewFile"},
    config = conf.gitsigns,
    requires = {"nvim-lua/plenary.nvim", opt = true}
}
ui["git@github.com:lukas-reineke/indent-blankline.nvim"] = {
    opt = true,
    event = "BufRead",
    config = conf.indent_blankline
}
ui["git@github.com:akinsho/nvim-bufferline.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_bufferline
}
ui["git@github.com:dstein64/nvim-scrollview"] = {opt = true, event = "BufRead"}

return ui
