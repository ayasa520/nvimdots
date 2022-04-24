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
	event = "BufRead",
	config = function()
		vim.g.Illuminate_highlightUnderCursor = 0
		vim.g.Illuminate_ftblacklist = {
			"help",
			"dashboard",
			"alpha",
			"packer",
			"norg",
			"DoomInfo",
			"NvimTree",
			"Outline",
			"toggleterm",
		}
	end,
}
editor["terrortylor/nvim-comment"] = {
    opt = false,
    config = function()
        require("nvim_comment").setup({
            hook = function()
                require("ts_context_commentstring.internal").update_commentstring()
            end
        })
    end
}
editor["nvim-treesitter/nvim-treesitter"] = {
    opt = true,
    run = ":TSUpdate",
    event = "BufRead",
    config = conf.nvim_treesitter
}
editor["nvim-treesitter/nvim-treesitter-textobjects"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["p00f/nvim-ts-rainbow"] = {
    opt = true,
    after = "nvim-treesitter",
    event = "BufRead"
}
editor["JoosepAlviste/nvim-ts-context-commentstring"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["mfussenegger/nvim-ts-hint-textobject"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["windwp/nvim-ts-autotag"] = {
    opt = true,
    ft = {"html", "xml"},
    config = conf.autotag
}
editor["andymass/vim-matchup"] = {
    opt = true,
    after = "nvim-treesitter",
    config = conf.matchup
}
editor["rhysd/accelerated-jk"] = { opt = true, event = "BufReadPost" }
editor["hrsh7th/vim-eft"] = { opt = true, event = "BufReadPost" }
editor["romainl/vim-cool"] = {
    opt = true,
    event = {"CursorMoved", "InsertEnter"}
}
editor["phaazon/hop.nvim"] = {
    opt = true,
    branch = "v1",
    cmd = {
        "HopLine", "HopLineStart", "HopWord", "HopPattern", "HopChar1",
        "HopChar2"
    },
    config = function()
        require("hop").setup {keys = "etovxqpdygfblzhckisuran"}
    end
}
editor["karb94/neoscroll.nvim"] = {
    opt = true,
    event = "WinScrolled",
    config = conf.neoscroll
}
editor["vimlab/split-term.vim"] = { opt = true, cmd = { "Term", "VTerm" } }
editor["akinsho/toggleterm.nvim"] = {
	opt = true,
	event = "BufRead",
	config = conf.toggleterm,
}
editor["numtostr/FTerm.nvim"] = {opt = true, event = "BufRead"}
editor["norcalli/nvim-colorizer.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_colorizer
}
editor["rmagatti/auto-session"] = {
    opt = true,
    cmd = {"SaveSession", "RestoreSession", "DeleteSession"},
    config = conf.auto_session
}
editor["jdhao/better-escape.vim"] = {opt = true, event = "InsertEnter"}
editor["rcarriga/nvim-dap-ui"] = {
	opt = false,
	config = conf.dapui,
	requires = {
		{ "mfussenegger/nvim-dap", config = conf.dap },
		{
			"Pocco81/dap-buddy.nvim",
			opt = true,
			cmd = { "DIInstall", "DIUninstall", "DIList" },
			commit = "24923c3819a450a772bb8f675926d530e829665f",
			config = conf.dapinstall,
		},
	},
}
editor["theHamsta/nvim-dap-virtual-text"] = {
    opt = false,
    config = conf.dap_virtual_text
}
editor["tpope/vim-fugitive"] = {opt = true, cmd = {"Git", "G"}}

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

editor["dhruvasagar/vim-table-mode"] = {
    ft = "markdown",
    config = function ()
        vim.g.table_mode_corner='|'
    end
}

return editor
