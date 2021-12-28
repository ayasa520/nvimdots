local editor = {}
local conf = require('modules.editor.config')
editor['git@github.com:ekickx/clipboard-image.nvim'] = {
    opt = true,
    cmd={'PasteImg'},
    config = conf.clipboard_image
}
editor['git@github.com:lervag/vimtex'] = {
    opt = true,
    config = conf.vimtex,
    ft = 'tex'
}

editor['git@github.com:Pocco81/AutoSave.nvim'] = {
    opt = true,
    cmd = {'ASToggle','ASOn','ASOff'},
    events = {"InsertLeave", "TextChanged"},
    config = conf.autosave
}
editor['git@github.com:junegunn/vim-easy-align'] = {opt = true, cmd = 'EasyAlign'}
editor['git@github.com:itchyny/vim-cursorword'] = {
    opt = true,
    event = {"BufReadPre", "BufNewFile"},
    config = conf.vim_cursorwod
}
editor["git@github.com:terrortylor/nvim-comment"] = {
    opt = false,
    config = function()
        require("nvim_comment").setup({
            hook = function()
                require("ts_context_commentstring.internal").update_commentstring()
            end
        })
    end
}
editor["git@github.com:simrat39/symbols-outline.nvim"] = {
    opt = true,
    cmd = {"SymbolsOutline", "SymbolsOutlineOpen"},
    config = conf.symbols_outline
}
editor["git@github.com:nvim-treesitter/nvim-treesitter"] = {
    opt = true,
    run = ":TSUpdate",
    event = "BufRead",
    config = conf.nvim_treesitter
}
editor["git@github.com:nvim-treesitter/nvim-treesitter-textobjects"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["git@github.com:romgrk/nvim-treesitter-context"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["git@github.com:p00f/nvim-ts-rainbow"] = {
    opt = true,
    after = "nvim-treesitter",
    event = "BufRead"
}
editor["git@github.com:JoosepAlviste/nvim-ts-context-commentstring"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["git@github.com:mfussenegger/nvim-ts-hint-textobject"] = {
    opt = true,
    after = "nvim-treesitter"
}
editor["git@github.com:SmiteshP/nvim-gps"] = {
    opt = true,
    after = "nvim-treesitter",
    config = conf.nvim_gps
}
editor["git@github.com:lukas-reineke/format.nvim"] = {
    opt = true,
    cmd = {"Format", "FormatWrite"},
    config = conf.format
}
editor["git@github.com:windwp/nvim-ts-autotag"] = {
    opt = true,
    ft = {"html", "xml"},
    config = conf.autotag
}
editor["git@github.com:andymass/vim-matchup"] = {
    opt = true,
    after = "nvim-treesitter",
    config = conf.matchup
}
editor["git@github.com:rhysd/accelerated-jk"] = {opt = true}
editor["git@github.com:hrsh7th/vim-eft"] = {opt = true}
editor["git@github.com:romainl/vim-cool"] = {
    opt = true,
    event = {"CursorMoved", "InsertEnter"}
}
editor["git@github.com:phaazon/hop.nvim"] = {
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
editor["git@github.com:karb94/neoscroll.nvim"] = {
    opt = true,
    event = "WinScrolled",
    config = conf.neoscroll
}
editor["git@github.com:vimlab/split-term.vim"] = {opt = true, cmd = {"Term", "VTerm"}}
editor["git@github.com:akinsho/nvim-toggleterm.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.toggleterm
}
editor["git@github.com:numtostr/FTerm.nvim"] = {opt = true, event = "BufRead"}
editor["git@github.com:norcalli/nvim-colorizer.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_colorizer
}
editor["git@github.com:rmagatti/auto-session"] = {
    opt = true,
    cmd = {"SaveSession", "RestoreSession", "DeleteSession"},
    config = conf.auto_session
}
editor["git@github.com:jdhao/better-escape.vim"] = {opt = true, event = "InsertEnter"}
editor["git@github.com:rcarriga/nvim-dap-ui"] = {
    opt = false,
    config = conf.dapui,
    requires = {
        {"git@github.com:mfussenegger/nvim-dap", config = conf.dap}, {
            "git@github.com:Pocco81/DAPInstall.nvim",
            opt = true,
            cmd = {"DIInstall", "DIUninstall", "DIList"},
            config = conf.dapinstall
        }
    }
}
editor["git@github.com:tpope/vim-fugitive"] = {opt = true, cmd = {"Git", "G"}}
editor["git@github.com:edluffy/specs.nvim"] = {
    opt = true,
    event = "CursorMoved",
    config = conf.specs
}

return editor
