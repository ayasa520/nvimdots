local lang = {}
local conf = require("modules.lang.config")

lang['fatih/vim-go'] = {
    opt = true,
    ft = 'go',
    run = ':GoInstallBinaries',
    config = conf.lang_go
}
lang["rust-lang/rust.vim"] = {opt = true, ft = "rust"}
lang["simrat39/rust-tools.nvim"] = {
    opt = true,
    ft = "rust",
    config = conf.rust_tools,
    requires = {{"nvim-lua/plenary.nvim", opt = false}}
}
-- lang["kristijanhusak/orgmode.nvim"] = {
--     opt = true,
--     ft = "org",
--     config = conf.lang_org
-- }
lang["iamcco/markdown-preview.nvim"] = {
    opt = true,
    ft = "markdown",
    run = "cd app && npm install",
    cmd = {"MarkdownPreview","MarkdownPreviewStop","MarkdownPreviewToggle"}
}
lang["chrisbra/csv.vim"] = {opt = true, ft = "csv"}
-- lang["nvim-neorg/neorg"] = {
--     opt = true,
--     ft = "norg",
--     config = function()
--         require('neorg').setup ({
--             load = {
--                 ["core.defaults"] = {},
--                 ["core.norg.dirman"] = {
--                     config = {
--                         workspaces = {
--                             work = "~/notes/work",
--                             home = "~/notes/home",
--                         }
--                     }
--                 },
--                 ["core.norg.concealer"] = {
--                     config = {
--                         icons = {
--                             todo ={
--                                 urgent = {
--                                     enabled = true,
--                                     icon = "",
--                                     highlight = "NeorgTodoItemUrgentMark",
--                                     query = "(todo_item_urgent) @icon",
--                                     extract = function()
--                                     return 1
--                                     end,
--                                 },
--                             },
--                         }
--                     }
--                 },
--                 ["core.norg.qol.toc"] = {},
--                 ["core.norg.completion"] = { config = { engine = "nvim-cmp" } },
--                 ["core.presenter"] = {
--                     config = {
--                         zen_mode = "truezen"
--                     }
--                 }
                 
--             }
--         })
--     end,
--     requires = {
--         {"nvim-lua/plenary.nvim"},
--         {"Pocco81/TrueZen.nvim"},
--     }
-- }
return lang
