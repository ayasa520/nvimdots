local tools = {}
local conf = require("modules.tools.config")

-- tools["git@github.com:NTBBloodbath/rest.nvim.git"] = {
--     requires = { "git@github.com:nvim-lua/plenary.nvim" },
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
tools['git@github.com:lervag/vimtex'] = {
    opt = false,
    config = function()
        vim.g.vimtex_view_general_viewer = 'okular'
        -- vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_compiler_latexmk_engines = {
            _ = '-xelatex'
        }
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_compiler_progname = 'nvr'
        vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
    end,
}
tools["git@github.com:nvim-telescope/telescope-media-files.nvim"]={
    opt = true,after = 'telescope.nvim'
}
tools["git@github.com:RishabhRD/popfix"] = {opt = false}
tools["git@github.com:nvim-lua/plenary.nvim"] = {opt = false}
tools["git@github.com:nvim-telescope/telescope.nvim"] = {
    opt = true,
    module = "telescope",
    cmd = "Telescope",
    config = conf.telescope,
    requires = {
        {"git@github.com:nvim-lua/plenary.nvim", opt = false},
        {"git@github.com:nvim-lua/popup.nvim", opt = true}
    }
}
tools["git@github.com:nvim-telescope/telescope-fzf-native.nvim"] = {
    opt = true,
    run = "make",
    after = "telescope.nvim"
}

tools["git@github.com:nvim-telescope/telescope-project.nvim"] = {
    opt = true,
    after = "telescope.nvim"
}
tools["git@github.com:nvim-telescope/telescope-frecency.nvim"] = {
    opt = true,
    after = "telescope.nvim",
    requires = {{"git@github.com:tami5/sqlite.lua", opt = true}}
}
tools["git@github.com:jvgrootveld/telescope-zoxide"] = {opt = true, after = "telescope.nvim"}
tools["git@github.com:thinca/vim-quickrun"] = {
    opt = true, 
    cmd = {"QuickRun", "Q"},
    config = function ()
            vim.g.quickrun_config={ _={runner='nvimterm'}}
    end,
    requires = {{"git@github.com:statiolake/vim-quickrun-runner-nvimterm",opt = true}}
}
tools["git@github.com:michaelb/sniprun"] = {
    opt = true,
    run = "bash ./install.sh",
    cmd = {"SnipRun", "'<,'>SnipRun"}
}
tools["git@github.com:folke/which-key.nvim"] = {
    opt = true,
    keys = ",",
    config = function() require("which-key").setup {} end
}
tools["git@github.com:folke/trouble.nvim"] = {
    opt = true,
    cmd = {"Trouble", "TroubleToggle", "TroubleRefresh"},
    config = conf.trouble
}
tools["git@github.com:dstein64/vim-startuptime"] = {opt = true, cmd = "StartupTime"}
tools["git@github.com:gelguy/wilder.nvim"] = {
    event = "CmdlineEnter",
    config = conf.wilder,
    requires = {{"git@github.com:romgrk/fzy-lua-native", after = "wilder.nvim"}}
}

return tools
