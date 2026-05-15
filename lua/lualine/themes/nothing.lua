local nothing = require("nothing")

local colors = nothing.colors or {}

return {
    normal = {
        a = { fg = colors.fg, bg = colors.bg },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
    },

    insert = {
        a = { fg = colors.fg, bg = colors.bg },
    },

    visual = {
        a = { fg = colors.fg, bg = colors.bg },
    },

    replace = {
        a = { fg = colors.fg, bg = colors.bg },
    },

    inactive = {
        a = { fg = colors.fg, bg = colors.bg },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
    },
}

