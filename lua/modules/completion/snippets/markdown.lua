local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

local  markdown = {
        s({trig = "tb(%d+)*(%d+)", regTrig = true,dscr="生成表格"},{
            -- pos, function, argnodes, user_arg1
            d(1, function(args, snip, old_state, initial_text)
                local nodes = {}
                -- count is nil for invalid input.
                local row = snip.captures[1]
                local col = snip.captures[2]
                -- Make sure there's a number in args[1] and arg[2].
                    for j=1, row+1 do
                        for k=1,col do  
                            local iNode
                            if j==2 then
                                iNode = i((j-1)*col+k,":-:")
                            else
                                iNode = i((j-1)*col+k,initial_text)
                            end
                            nodes[(col*2+1)*(j-1)+2*k]=iNode
                            nodes[(col*2+1)*(j-1)+2*k-1] = t("|")
                        end
                        -- linebreak
                        nodes[(col*2+1)*(j-1)+2*col+1] = t({"|",""}) 
                    end
                local snip = sn(nil, nodes)
                -- snip.old_state = old_state
                return snip
            end, {}, "   ")
        })
}

return markdown