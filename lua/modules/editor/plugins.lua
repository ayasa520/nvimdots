local editor = {}
local conf = require('modules.editor.config')
editor['machakann/vim-sandwich'] = {
    config = conf.sandwich
}

editor['ekickx/clipboard-image.nvim'] = {
    opt = true,
    cmd={'PasteImg'},
    config = conf.clipboard_image
}


editor['Pocco81/AutoSave.nvim'] = {
    opt = false,
    config = function()
        require("autosave").setup({
            write_all_buffers = false,
            events = {"InsertLeave", "TextChanged"},
            on_off_commands = false,
            clean_command_line_interval = 3000,
            debounce_delay = 135,
            enabled = true,
            execution_message = function ()
                return "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")
              end,
        })
    end
}
editor['junegunn/vim-easy-align'] = {opt = true, cmd = 'EasyAlign'}
editor['itchyny/vim-cursorword'] = {
    opt = true,
    event = {"BufReadPre", "BufNewFile"},
    config = conf.vim_cursorwod
}
editor["RRethy/vim-illuminate"] = {
	event = "BufReadPost",
	config = conf.illuminate,
}
editor["terrortylor/nvim-comment"] = {
	opt = false,
	config = conf.nvim_comment,
}
editor["nvim-treesitter/nvim-treesitter"] = {
	opt = true,
	run = ":TSUpdate",
	event = "BufReadPost",
	config = conf.nvim_treesitter,
}
editor["nvim-treesitter/nvim-treesitter-textobjects"] = {
	opt = true,
	after = "nvim-treesitter",
}
editor["p00f/nvim-ts-rainbow"] = {
	opt = true,
	after = "nvim-treesitter",
	event = "BufReadPost",
}
editor["JoosepAlviste/nvim-ts-context-commentstring"] = {
	opt = true,
	after = "nvim-treesitter",
}
editor["mfussenegger/nvim-ts-hint-textobject"] = {
	opt = true,
	after = "nvim-treesitter",
}
editor["windwp/nvim-ts-autotag"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.autotag,
}
editor["andymass/vim-matchup"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.matchup,
}
editor["rhysd/accelerated-jk"] = { opt = true, event = "BufWinEnter" }
editor["hrsh7th/vim-eft"] = { opt = true, event = "BufReadPost" }
editor["romainl/vim-cool"] = {
	opt = true,
	event = { "CursorMoved", "InsertEnter" },
}
editor["phaazon/hop.nvim"] = {
	opt = true,
	branch = "v2",
	event = "BufReadPost",
	config = conf.hop,
}
editor["karb94/neoscroll.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.neoscroll,
}
editor["vimlab/split-term.vim"] = { opt = true, cmd = { "Term", "VTerm" } }
editor["akinsho/toggleterm.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.toggleterm,
}
editor["numtostr/FTerm.nvim"] = { opt = true, event = "BufReadPost" }
editor["norcalli/nvim-colorizer.lua"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.nvim_colorizer,
}
editor["rmagatti/auto-session"] = {
	opt = true,
	cmd = { "SaveSession", "RestoreSession", "DeleteSession" },
	config = conf.auto_session,
}
editor["max397574/better-escape.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.better_escape,
}
editor["rcarriga/nvim-dap-ui"] = {
	opt = false,
	requires = {
		{ "mfussenegger/nvim-dap", config = conf.dap },
		{ "theHamsta/nvim-dap-virtual-text", config = conf.dap_virtual_text }
	},
	config = conf.dapui,
}
editor["tpope/vim-fugitive"] = { opt = true, cmd = { "Git", "G" } }
editor["famiu/bufdelete.nvim"] = {
	opt = true,
	cmd = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
}
editor["edluffy/specs.nvim"] = {
	opt = true,
	event = "CursorMoved",
	config = conf.specs,
}
editor["abecodes/tabout.nvim"] = {
	opt = true,
	event = "InsertEnter",
	wants = "nvim-treesitter",
	after = "nvim-cmp",
	config = conf.tabout,
}
editor["sindrets/diffview.nvim"] = {
	opt = true,
	cmd = { "DiffviewOpen" },
}
editor["brglng/vim-im-select"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.imselect,
}
editor["luukvbaal/stabilize.nvim"] = {
	opt = true,
	event = "BufReadPost",
}

editor["dhruvasagar/vim-table-mode"] = {
    ft = "markdown",
    config = function ()
        vim.g.table_mode_corner='|'
    end
}

return editor
