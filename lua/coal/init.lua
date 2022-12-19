local M = {}

function M.set_highlights(hlgroups)
  for group, colors in pairs(hlgroups) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

function M.load()
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end

  vim.g.colors_name = "coal"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  local hl = require("coal.hlgroups")
  hl.set_term_colors()

  M.set_highlights(hl.hlgroups)
end

return M
