local colors = require("autumnull.palette")

local autumnull = {}

autumnull.normal = {
    a = { bg = colors.yellow, fg = colors.dark   },
    b = { bg = colors.alt_bg, fg = colors.yellow },
    c = { bg = colors.bg,     fg = colors.fg     },
    x = { bg = colors.bg,     fg = colors.fg     },
}

autumnull.insert = {
    a = { bg = colors.orange, fg = colors.dark   },
    b = { bg = colors.alt_bg, fg = colors.orange },
}

autumnull.command = {
    a = { bg = colors.fg,     fg = colors.dark },
    b = { bg = colors.alt_bg, fg = colors.gray },
}

autumnull.visual = {
    a = { bg = colors.alt_purple, fg = colors.dark       },
    b = { bg = colors.alt_bg,     fg = colors.alt_purple },
}

autumnull.replace = {
    a = { bg = colors.red,    fg = colors.dark },
    b = { bg = colors.alt_bg, fg = colors.red  },
}

autumnull.inactive = {
    a = { bg = colors.fg,   fg = colors.dark },
    b = { bg = colors.fg,   fg = colors.dark },
}

return autumnull
