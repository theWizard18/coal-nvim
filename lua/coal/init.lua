local hl = require("coal.hlgroups")
local c = require("coal.colors")

local M = {}

local function set_highlights(hlgroups)
  for group, colors in pairs(hlgroups) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

local function set_config(config)
  if config.number_column_lighter_bg then
    hl.groups.LineNr.bg = c.bg_nvtree
    local diffs = {
      'diffAdded',
      'diffRemoved',
      'diffDeleted',
      'diffChanged',
      'diffOldFile',
      'diffNewFile',
    }
    for _,i in pairs(diffs) do
      hl.groups[i].bg = c.bg_nvtree
    end
  end
  hl.groups.Comment.italic = config.italicize_comments
  local diagnostics = {
    'DiagnosticError',
    'DiagnosticWarn',
    'DiagnosticInfo',
    'DiagnosticHint',
  }
  for _, i in ipairs(diagnostics) do
    hl.groups[i].italic = config.italicize_diagnostics
  end
end

function M.setup(overrides)
  local defaults = require("coal.config")
  local config = vim.tbl_extend("force", defaults, overrides or {})
  set_config(config)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end

  vim.g.colors_name = "coal"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  hl.set_term_colors()

  set_highlights(hl.groups)
end

return M
