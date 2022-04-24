local ui = {}
local conf = require("modules.ui.config")

<<<<<<< HEAD
ui["kyazdani42/nvim-web-devicons"] = {opt = false}
ui["sainnhe/edge"] = {opt = false, config = conf.edge}
=======
ui["kyazdani42/nvim-web-devicons"] = { opt = false }
ui["shaunsingh/nord.nvim"] = { opt = false, config = conf.nord }
ui["sainnhe/edge"] = { opt = false, config = conf.edge }
>>>>>>> upstream/main
ui["catppuccin/nvim"] = {
	opt = false,
	as = "catppuccin",
	config = conf.catppuccin,
}
ui["rebelot/kanagawa.nvim"] = { opt = false, config = conf.kanagawa }
ui["hoob3rt/lualine.nvim"] = {
    opt = true,
    after = "lualine-lsp-progress",
    config = conf.lualine
}
<<<<<<< HEAD
ui["arkav/lualine-lsp-progress"] = {opt = true, after = "nvim-gps"}
ui["glepnir/dashboard-nvim"] = {opt = true, event = "BufWinEnter"}
ui["kyazdani42/nvim-tree.lua"] = {
    opt = true,
    event = "BufRead",
    cmd = {"NvimTreeToggle", "NvimTreeOpen"},
    config = conf.nvim_tree
=======
ui["SmiteshP/nvim-gps"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.nvim_gps,
}
ui["arkav/lualine-lsp-progress"] = { opt = true, after = "nvim-gps" }
ui["glepnir/dashboard-nvim"] = { opt = true, event = "BufWinEnter" }
ui["kyazdani42/nvim-tree.lua"] = {
	opt = true,
	cmd = { "NvimTreeToggle" },
	config = conf.nvim_tree,
>>>>>>> upstream/main
}
ui["lewis6991/gitsigns.nvim"] = {
    opt = true,
    event = {"BufRead", "BufNewFile"},
    config = conf.gitsigns,
    requires = {"nvim-lua/plenary.nvim", opt = true}
}
ui["lukas-reineke/indent-blankline.nvim"] = {
    opt = true,
    event = "BufRead",
    config = conf.indent_blankline
}
<<<<<<< HEAD
ui["akinsho/nvim-bufferline.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_bufferline
=======
ui["akinsho/bufferline.nvim"] = {
	opt = true,
	tag = "*",
	event = "BufRead",
	config = conf.nvim_bufferline,
>>>>>>> upstream/main
}
ui["petertriho/nvim-scrollbar"] = {
	opt = true,
	event = "BufRead",
	config = function()
		require("scrollbar").setup()
	end,
}
ui["wfxr/minimap.vim"] = {
	opt = true,
	event = "BufRead",
}
ui["mbbill/undotree"] = {
	opt = true,
	cmd = "UndotreeToggle",
}

return ui
