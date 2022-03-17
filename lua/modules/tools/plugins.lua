local tools = {}
local conf = require("modules.tools.config")

-- tools["NTBBloodbath/rest.nvim.git"] = {
--     requires = { "nvim-lua/plenary.nvim" },
--     config = function()
--         require("rest-nvim").setup({
--           -- Open request results in a horizontal split
--           result_split_horizontal = false,
--           -- Skip SSL verification, useful for unknown certificates
--           skip_ssl_verification = false,
--           -- Highlight request on run
--           highlight = {
--             enabled = true,
--             timeout = 150,
--           },
--           result = {
--             -- toggle showing URL, HTTP info, headers at top the of result window
--             show_url = true,
--             show_http_info = true,
--             show_headers = true,
--           },
--           -- Jump to request line on run
--           jump_to_request = false,
--           env_file = '.env',
--           custom_dynamic_variables = {},
--           yank_dry_run = true,
--         })
--       end
-- }
tools['lervag/vimtex'] = {
    opt = false,
    config = conf.vimtex,
    ft = 'tex'
}

tools["nvim-telescope/telescope-media-files.nvim"]={
    opt = true,after = 'telescope.nvim'
}
tools["RishabhRD/popfix"] = {opt = false}
tools["nvim-lua/plenary.nvim"] = {opt = false}
tools["nvim-telescope/telescope.nvim"] = {
    opt = true,
    module = "telescope",
    cmd = "Telescope",
    config = conf.telescope,
    requires = {
        {"nvim-lua/plenary.nvim", opt = false},
        {"nvim-lua/popup.nvim", opt = true}
    }
}
tools["nvim-telescope/telescope-fzf-native.nvim"] = {
    opt = true,
    run = "make",
    after = "telescope.nvim"
}

tools["nvim-telescope/telescope-project.nvim"] = {
    opt = true,
    after = "telescope.nvim"
}
tools["nvim-telescope/telescope-frecency.nvim"] = {
    opt = true,
    after = "telescope.nvim",
    requires = {{"tami5/sqlite.lua", opt = true}}
}
tools["jvgrootveld/telescope-zoxide"] = {opt = true, after = "telescope.nvim"}
tools["thinca/vim-quickrun"] = {
    opt = true, 
    cmd = {"QuickRun", "Q"},
    config = function ()
            vim.g.quickrun_config={ _={runner='nvimterm'}}
    end,
    requires = {{"statiolake/vim-quickrun-runner-nvimterm",opt = true}}
}
tools["michaelb/sniprun"] = {
    opt = true,
    run = "bash ./install.sh",
    cmd = {"SnipRun", "'<,'>SnipRun"},
    config = conf.sniprun
}
tools["folke/which-key.nvim"] = {
    opt = true,
    keys = ",",
    config = function() require("which-key").setup {} end
}
tools["folke/trouble.nvim"] = {
    opt = true,
    cmd = {"Trouble", "TroubleToggle", "TroubleRefresh"},
    config = conf.trouble
}
tools["dstein64/vim-startuptime"] = {opt = true, cmd = "StartupTime"}
tools["gelguy/wilder.nvim"] = {
    event = "CmdlineEnter",
    config = conf.wilder,
    requires = {{"romgrk/fzy-lua-native", after = "wilder.nvim"}}
}
tools["nathom/filetype.nvim"] = {
	opt = false,
	config = conf.filetype,
}
tools["rcarriga/nvim-notify"] = {
    opt = false,
    config = conf.nvim_notify,
}
tools["danymat/neogen"] = {
    opt = false,
    config = function()
        require('neogen').setup {}
    end,
    requires ={
        {"nvim-treesitter/nvim-treesitter"}
    }
}
tools["airblade/vim-rooter"] = {
    opt = false
}
tools["romgrk/hologram.nvim"] = {
    branch = 'development',
    config =function()
        require("hologram").setup()
    end
}


return tools
