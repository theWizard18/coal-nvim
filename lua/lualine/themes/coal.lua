local c = require "coal.colors"

local coal = {}

coal.normal = {
  a = {fg = c.black, bg = c.blue, bold = true},
  b = {fg = c.blue, bg = c.bg1},
  c = {fg = c.fg1, bg = c.bg1},
}

coal.insert = {
  a = {fg = c.black, bg = c.green, bold = true},
  b = {fg = c.green, bg = c.bg1},
}

coal.command = {
  a = {fg = c.black, bg = c.orange, bold = true},
  b = {fg = c.orange, bg = c.bg1},
}

coal.visual = {
  a = {fg = c.black, bg = c.violet, bold = true},
  b = {fg = c.violet, bg = c.bg1},
}

coal.replace = {
  a = {fg = c.black, bg = c.red, bold = true},
  b = {fg = c.red, bg = c.bg1},
}

coal.terminal = {
  a = {fg = c.black, bg = c.cyan, bold = true},
  b = {fg = c.cyan, bg = c.bg1},
}

coal.inactive = {
  a = {fg = c.fg1, bg = c.bg1},
  b = {fg = c.fg1, bg = c.bg1},
  c = {fg = c.fg1, bg = c.bg1},
}

return coal
