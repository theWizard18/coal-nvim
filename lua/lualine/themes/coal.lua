local c = require "coal.colors"

local coal = {}

coal.normal = {
  a = {fg = c.dark_blue, bg = c.blue, gui = "bold"},
  b = {fg = c.blue, bg = c.bg1},
  c = {fg = c.fg0, bg = c.bg0},
}

coal.insert = {
  a = {fg = c.dark_green, bg = c.green, gui = "bold"},
  b = {fg = c.green, bg = c.bg1},
}

coal.command = {
  a = {fg = c.dark_orange, bg = c.orange, gui = "bold"},
  b = {fg = c.orange, bg = c.bg1},
}

coal.visual = {
  a = {fg = c.dark_violet, bg = c.violet, gui = "bold"},
  b = {fg = c.violet, bg = c.bg1},
}

coal.replace = {
  a = {fg = c.dark_red, bg = c.red, gui = "bold"},
  b = {fg = c.red, bg = c.bg1},
}

coal.terminal = {
  a = {fg = c.dark_cyan, bg = c.cyan, gui = "bold"},
  b = {fg = c.cyan, bg = c.bg1},
}

coal.inactive = {
  a = {fg = c.fg1, bg = c.bg1},
  b = {fg = c.fg1, bg = c.bg1},
  c = {fg = c.fg1, bg = c.bg1},
}

return coal
