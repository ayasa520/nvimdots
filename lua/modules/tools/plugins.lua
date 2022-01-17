local tools = {}
local conf = require("modules.tools.config")

tools["git@github.com:nvim-telescope/telescope-media-files.nvim"]={
    opt = true,after = 'telescope.nvim'
}
tools["git@github.com:nvim-lua/plenary.nvim"] = {opt = false}
tools["git@github.com:nvim-telescope/telescope.nvim"] = {
tools["git@github.com:RishabhRD/popfix"] = {opt = false}
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
tools["git@github.com:thinca/vim-quickrun"] = {opt = true, cmd = {"QuickRun", "Q"}}
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
