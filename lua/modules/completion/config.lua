local config = {}



function config.nvim_lsp() require("modules.completion.lspconfig") end

function config.lightbulb()
    vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
end

function config.saga()
    local saga = require 'lspsaga'
    saga.init_lsp_saga {
        error_sign = "",
        warn_sign = "",
        hint_sign = "",
        infor_sign = "",
    }
end

function config.cmp()
    local press = function(key)
        vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes(key, true, true, true),
            "n",
            true
        )
    end
    vim.cmd [[highlight CmpItemAbbrDeprecated guifg=#D8DEE9 guibg=NONE gui=strikethrough]]
    vim.cmd [[highlight CmpItemKindSnippet guifg=#BF616A guibg=NONE]]
    vim.cmd [[highlight CmpItemKindUnit guifg=#D08770 guibg=NONE]]
    vim.cmd [[highlight CmpItemKindProperty guifg=#A3BE8C guibg=NONE]]
    vim.cmd [[highlight CmpItemKindKeyword guifg=#EBCB8B guibg=NONE]]
    vim.cmd [[highlight CmpItemAbbrMatch guifg=#5E81AC guibg=NONE]]
    vim.cmd [[highlight CmpItemAbbrMatchFuzzy guifg=#5E81AC guibg=NONE]]
    vim.cmd [[highlight CmpItemKindVariable guifg=#8FBCBB guibg=NONE]]
    vim.cmd [[highlight CmpItemKindInterface guifg=#88C0D0 guibg=NONE]]
    vim.cmd [[highlight CmpItemKindText guifg=#81A1C1 guibg=NONE]]
    vim.cmd [[highlight CmpItemKindFunction guifg=#B48EAD guibg=NONE]]
    vim.cmd [[highlight CmpItemKindMethod guifg=#B48EAD guibg=NONE]]

    local t = function(str)
        return vim.api.nvim_replace_termcodes(str, true, true, true)
    end
    local has_words_before = function()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and
                   vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(
                       col, col):match("%s") == nil
    end

    local cmp = require("cmp")
    cmp.setup {
        sorting = {
            comparators = {
                cmp.config.compare.offset, cmp.config.compare.exact,
                cmp.config.compare.score, require("cmp-under-comparator").under,
                cmp.config.compare.kind, cmp.config.compare.sort_text,
                cmp.config.compare.length, cmp.config.compare.order
            }
        },
        formatting = {
            format = function(entry, vim_item)
                local lspkind_icons = {
                    Text = "",
                    Method = "",
                    Function = "",
                    Constructor = "",
                    Field = "",
                    Variable = "",
                    Class = "ﴯ",
                    Interface = "",
                    Module = "",
                    Property = "ﰠ",
                    Unit = "",
                    Value = "",
                    Enum = "",
                    Keyword = "",
                    Snippet = "",
                    Color = "",
                    File = "",
                    Reference = "",
                    Folder = "",
                    EnumMember = "",
                    Constant = "",
                    Struct = "",
                    Event = "",
                    Operator = "",
                    TypeParameter = ""
                }
                -- load lspkind icons
                vim_item.kind = string.format("%s %s",
                                              lspkind_icons[vim_item.kind],
                                              vim_item.kind)

                vim_item.menu = ({
                    -- cmp_tabnine = "[TN]",
                    buffer = "[BUF]",
                    orgmode = "[ORG]",
                    nvim_lsp = "[LSP]",
                    nvim_lua = "[LUA]",
                    ultisnips = "[USP]",
                    path = "[PATH]",
                    tmux = "[TMUX]",
                    luasnip = "[SNIP]",
                    spell = "[SPELL]"
                })[entry.source.name]

                return vim_item
            end
        },
        -- You can set mappings if you want
        -- 对于 luasnip, choiceNode 使用 Ctrl k 切换（暂时没有候选展示），Ctrl l 跳到下一个插入点
        mapping = {
            ["<CR>"] = cmp.mapping.confirm({select = true}),
            ["<C-p>"] = cmp.mapping.select_prev_item(),
            ["<C-n>"] = cmp.mapping.select_next_item(),
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-e>"] = cmp.mapping.close(),
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif cmp.get_selected_entry() == nil and vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
						press("<C-R>=UltiSnips#ExpandSnippet()<CR>")
                elseif  has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end, {"i", "s"}),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                else
                    fallback()
                end
            end, {"i", "s"}),
            ["<C-h>"] = cmp.mapping(function(fallback)
                if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                    press("<ESC>:call UltiSnips#JumpBackwards()<CR>")
                elseif require("luasnip").jumpable(-1) then
                    vim.fn.feedkeys(t("<Plug>luasnip-jump-prev"), "")
                else
                    fallback()
                end
            end,{"i","s"}),
            ["<C-l>"] = cmp.mapping(function(fallback)
                if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                    press("<ESC>:call UltiSnips#JumpForwards()<CR>")
                elseif require("luasnip").expand_or_jumpable() then
                    vim.fn.feedkeys(t("<Plug>luasnip-expand-or-jump"), "")
                else
                    fallback()
                end
            end,{"i","s"}),
            ["<C-k>"] = cmp.mapping(function(fallback)
                if require("luasnip").choice_active() then 
                    vim.fn.feedkeys(t("<Plug>luasnip-next-choice"), "")
                else
                    fallback()
                end
            end,{"i","s"})
        },
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end
        },
        -- You should specify your *installed* sources.
        sources = {
            {name = "nvim_lsp"}, {name = "ultisnips"}, {name = "nvim_lua"}, {name = "luasnip"},
            {name = "path"}, {name = "spell"}, {name = "tmux"},
            {name = "orgmode"}, {name = "buffer"}, {name = "latex_symbols"}
            -- {name = 'cmp_tabnine'}
        }
    }
end

function config.ultisnips()
	vim.g.UltiSnipsRemoveSelectModeMappings = 0
	vim.g.UltiSnipsEditSplit = 'vertical'
    vim.g.UltiSnipsJumpForwardTrigger = "<C-l>"
    vim.g.UltiSnipsJumpBackwardTrigger = "<C-h>"
    -- 下面设定了 UltiSnip snippets 的位置. 来源于 vim-snippet, 如果不特定的话就会使用 snippets 下的而非 UltiSnip 下的
    vim.g.UltiSnipsSnippetDirectories={os.getenv('HOME')..'/.local/share/nvim/site/pack/packer/start/vim-snippets/UltiSnips/',os.getenv('HOME')..'/.config/nvim/my_snippets/ultisnip'}
end

function config.luasnip()
    require("luasnip").config.set_config {
        region_check_events = "InsertEnter",
        delete_check_events = "TextChanged,InsertLeave",
        history = true,
	    -- Update more often, :h events for more info.
	    updateevents = "TextChanged,TextChangedI",
        ext_opts = {
            [require("luasnip.util.types").choiceNode] = {
                active = {
                    virt_text = {{"🔸", "GruvboxOrange"}}
                }
            },
            [require("luasnip.util.types").insertNode] = {
                active = {
                    virt_text = {{"🔹", "GruvboxBlue"}}
                }
            }
        }
    }
    -- 这两个添加了 json 格式的 snippet
    require("luasnip/loaders/from_vscode").load()
    require("luasnip/loaders/from_vscode").load({paths={"./my_snippets/luasnip/json"}}) 
    local function copy(args)
        return args[1]
    end
    -- lua 格式的这样写, 比较复杂的(需要上下文的)snippets放在这里
    package.path = package.path..';'..os.getenv('HOME')..'/.config/nvim/my_snippets/luasnip/lua/?.lua'
    require("luasnip").snippets = require("snippets")
end

-- function config.tabnine()
--     local tabnine = require('cmp_tabnine.config')
--     tabnine:setup({max_line = 1000, max_num_results = 20, sort = true})
-- end

function config.autopairs()
    require("nvim-autopairs").setup {}

    -- If you want insert `(` after select function or method item
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done",
                 cmp_autopairs.on_confirm_done({map_char = {tex = ""}}))
    cmp_autopairs.lisp[#cmp_autopairs.lisp + 1] = "racket"
end

return config
