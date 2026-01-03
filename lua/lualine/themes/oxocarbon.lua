local oxocarbon = require("oxocarbon").oxocarbon

local colors = {
  line_bg = oxocarbon.base00,
  line_fg = oxocarbon.base04,

  normal_bg  = oxocarbon.base09,
  insert_bg  = oxocarbon.base12,
  visual_bg  = oxocarbon.base14,
  replace_bg = oxocarbon.base10,
  command_bg = oxocarbon.base13,
  mode_fg    = oxocarbon.base02,

  replace_alt_fg = oxocarbon.base08,
}

local theme = {
  normal = {
    a = {fg = colors.mode_fg, bg = colors.normal_bg},
    b = {fg = colors.line_fg, bg = colors.line_bg},
    c = {fg = colors.line_fg, bg = colors.line_bg},
    z = {fg = colors.line_fg, bg = colors.line_bg},
  },
  insert = {
    a = {fg = colors.mode_fg, bg = colors.insert_bg},
    b = {fg = colors.line_fg, bg = colors.line_bg},
    z = {fg = colors.insert_bg, bg = colors.line_bg},
  },
  visual = {
    a = {fg = colors.mode_fg, bg = colors.visual_bg},
    b = {fg = colors.line_fg, bg = colors.line_bg},
    y = {fg = colors.line_fg, bg = colors.line_bg},
    z = {fg = colors.insert_bg, bg = colors.line_bg},
  },
  replace = {
    a = {fg = colors.mode_fg, bg = colors.replace_bg},
    b = {fg = colors.replace_alt_fg, bg = colors.line_bg},
  },
  inactive = {
    a = {fg = colors.mode_fg, bg = colors.normal_bg},
    b = {fg = colors.line_fg, bg = colors.line_bg},
    z = {fg = colors.mode_fg, bg = colors.line_bg},
  },
  command = {
    a = {fg = colors.mode_fg, bg = colors.command_bg},
  },
}

return theme
