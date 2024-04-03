local c = require("lumenite.variants.dark")
return {
    normal = {
        a = { gui = "bold", bg = c.green , fg = c.bg_secondary },
        b = { bg = c.sel_1, fg = c.green },
        c = { bg = c.bg_secondary, fg = c.fg },
    },
    insert = {
        a = { gui = "bold", bg = c.orange, fg = c.bg_secondary },
        b = { bg = c.sel_1, fg = c.orange },
    },
    visual = {
        a = { gui = "bold", bg = c.blue, fg = c.bg_secondary },
        b = { bg = c.sel_1, fg = c.blue },
    },
    command = {
        a = { gui = "bold", bg = c.purple, fg = c.bg_secondary },
        b = { bg = c.sel_1, fg = c.purple },
    },
    replace = {
        a = { gui = "bold", bg = c.pink, fg = c.bg_secondary },
        b = { bg = c.sel_1, fg = c.pink },
    },
    terminal = {
        a = { gui = "bold", bg = c.red, fg = c.bg_secondary },
        b = { bg = c.sel_1, fg = c.red },
    },
    inactive = {
        a = { bg = c.bg_secondary, fg = c.green },
        b = { bg = c.bg_secondary, fg = c.fg, gui = "bold" },
    },
}
