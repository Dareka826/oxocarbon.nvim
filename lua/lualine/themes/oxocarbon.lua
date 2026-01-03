local oxocarbon = require("oxocarbon").oxocarbon

local colors = {
  line_bg = oxocarbon.base01,
  line_fg = oxocarbon.base04,

  normal_bg   = oxocarbon.base09,
  insert_bg   = oxocarbon.base12,
  visual_bg   = oxocarbon.base14,
  replace_bg  = oxocarbon.base10,
  command_bg  = oxocarbon.base13,
  terminal_bg = oxocarbon.base07,
  mode_fg     = oxocarbon.base01,
}

local default = {fg = colors.line_fg, bg = colors.line_bg}

local normal_mode   = {fg = colors.mode_fg, bg = colors.normal_bg}
local insert_mode   = {fg = colors.mode_fg, bg = colors.insert_bg}
local visual_mode   = {fg = colors.mode_fg, bg = colors.visual_bg}
local replace_mode  = {fg = colors.mode_fg, bg = colors.replace_bg}
local command_mode  = {fg = colors.mode_fg, bg = colors.command_bg}
local terminal_mode = {fg = colors.mode_fg, bg = colors.terminal_bg}

-- [ A | B | C        X | Y | Z ]
local theme = {
  normal = {
    a = normal_mode, z = normal_mode,
    b = default, y = default,
    c = default, x = default,
  },
  insert = {
    a = insert_mode, z = insert_mode,
    b = default, y = default,
    c = default, x = default,
  },
  visual = {
    a = visual_mode, z = visual_mode,
    b = default, y = default,
    c = default, x = default,
  },
  replace = {
    a = replace_mode, z = replace_mode,
    b = default, y = default,
    c = default, x = default,
  },
  command = {
    a = command_mode, z = command_mode,
    b = default, y = default,
    c = default, x = default,
  },
  terminal = {
    a = terminal_mode, z = terminal_mode,
    b = default, y = default,
    c = default, x = default,
  },
  inactive = {
    a = default, z = default,
    b = default, y = default,
    c = default, x = default,
  },
}

return theme
