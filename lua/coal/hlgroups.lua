local c = require("coal.colors")

local M = {}
M.groups = {
  Normal =      {fg = c.fg0, bg = c.bg0},
  NormalNC =    {link = "Normal"},
  NonText =     {fg = c.fg_nt},
  EndofBuffer = {fg = c.bg0, bg = c.bg0},
  Conceal =     {link = "Normal"},

  Search =         {bg = c.indigo, bold = true},
  CurSearch =      {link = "Search"},

  Comment =     {fg = c.fg_cm, italic = true},
  Keyword =     {fg = c.violet},
  Label =       {link = "Keyword"},
  Statement =   {link = "Keyword"},
  Operator =    {fg = c.violet},
  Conditional = {fg = c.violet},
  Exception =   {link = "Conditional"},
  Repeat =      {link = "Conditional"},

  PreProc =   {fg = c.cyan},
  Include =   {link = "PreProc"},
  Macro =     {link = "PreProc"},
  Define =    {link = "PreProc"},
  PreCondit = {link = "PreProc"},

  Special =        {fg = c.blue},
  SpecialChar =    {fg = c.green, bold = false},
  Tag =            {fg = c.bght_yellow},
  Delimiter =      {fg = c.fg0},
  SpecialComment = {link = "SpecialChar"},
  Debug =          {link = "Tag"},

  Type =       {fg = c.red},
  Identifier = {fg = c.fg0},
  Function =   {fg = c.blue},

  Constant =  {fg = c.yellow},
  String =    {fg = c.orange},
  Character = {link = "String"},
  Number =    {link = "Constant"},
  Float =     {link = "Number"},
  Boolean =   {link = "Constant"},

  DiagnosticError = {fg = c.red, bg = c.dark_red, italic = true},
  DiagnosticWarn =  {fg = c.orange, bg = c.dark_orange, italic = true},
  DiagnosticInfo =  {fg = c.blue, bg = c.dark_blue, italic = true},
  DiagnosticHint =  {fg = c.cyan, bg = c.dark_cyan, italic = true},
  DiagnosticUnderlineError = {sp = c.red, undercurl = true},
  DiagnosticUnderlineWarn =  {sp = c.orange, undercurl = true},
  DiagnosticUnderlineInfo =  {sp = c.blue, undercurl = true},
  DiagnosticUnderlineHint =  {sp = c.cyan, undercurl = true},

  MatchParen = {bold = true, underline = true},

  Folded = {fg = c.fg1, bg = c.bg},
  FoldColumn = {link = "Folded"},

  CursorLine =   {bg = c.bg_cl},
  CursorColumn = {link = "CursorLine"},
  ColorColumn =  {bg = c.bg_nr},

  LineNr =       {fg = c.fg1, bg = c.bg0},
  LineNrAbove =  {link = "LineNr"},
  LineNrBelow =  {link = "LineNr"},
  CursorLineNr = {fg = c.fg1, bg = c.bg_cl, bold = true},

  StatusLine =   {fg = c.fg0, bg = c.bg1},
  StatusLineNC = {fg = c.bg1, bg = c.bg1},
  VertSplit =    {fg = c.bg1, bg = c.bg1},

  Pmenu =      {fg = c.fg0, bg = c.bg2},
  PmenuSel =   {fg = c.fg0, bg = c.bg_cl},
  PmenuSbar =  {bg = c.bg2},
  PmenuThumb = {bg = c.bg1},

  Visual = {bg = c.visual},

  TabLine =     {bg = c.bg1},
  TabLineFill = {link = "TabLine"},
  TabLineSel =  {bg = c.bg0},

  SignColumn =  {link = "LineNr"},
  diffAdded =   {fg = c.green},
  diffRemoved = {fg = c.red},
  diffDeleted = {fg = c.red},
  diffChanged = {fg = c.blue},
  diffOldFile = {fg = c.red},
  diffNewFile = {fg = c.green},
  DiffAdd =     {bg = c.green},
  DiffChange =  {bg = c.blue},
  DiffDelete =  {bg = c.red},

  GitSignsAdd =      {link = "diffAdded"},
  GitSignsChange =   {link = "diffChanged"},
  GitSignsDelete =   {link = "diffDeleted"},
  GitSignsDeleteLn = {link = "diffDeleted"},

  IndentBlanklineChar =               {link = "NonText"},
  IndentBlanklineSpaceChar =          {link = "IndentBlanklineChar"},
  IndentBlanklineSpaceCharBlankline = {link = "IndentBlanklineChar"},
  IndentBlanklineContextChar =        {fg = c.fg1},
  IndentBlanklineContextStart =       {sp = c.fg1, underline = true},

  Directory = {fg = c.blue},

  NvimTreeNormal =      {link = "Normal"},
  NvimTreeEndofBuffer = {link = "EndofBuffer"},
  NvimTreeFolderName =  {link = "Directory"},
  NvimTreeOpenedFile =  {fg = c.fg0, bold = true},
  NvimTreeExecFile =    {fg = c.green, bold = true},
  NvimTreeSymlink =     {fg = c.pink},

  TelescopeNormal = {fg = c.fg0, bg = c.bg},
  TelescopeBorder = {fg = c.fg1, bg = c.bg},
}
function M.set_term_colors()
  vim.g.terminal_color_0 =  c.bg1
  vim.g.terminal_color_1 =  c.red
  vim.g.terminal_color_2 =  c.green
  vim.g.terminal_color_3 =  c.yellow
  vim.g.terminal_color_4 =  c.blue
  vim.g.terminal_color_5 =  c.violet
  vim.g.terminal_color_6 =  c.cyan
  vim.g.terminal_color_7 =  c.fg_cm
  vim.g.terminal_color_8 =  c.bg2
  vim.g.terminal_color_9 =  c.bght_red
  vim.g.terminal_color_10 = c.bght_green
  vim.g.terminal_color_11 = c.bght_yellow
  vim.g.terminal_color_12 = c.bght_blue
  vim.g.terminal_color_13 = c.bght_violet
  vim.g.terminal_color_14 = c.bght_cyan
  vim.g.terminal_color_15 = c.fg1
end

return M
