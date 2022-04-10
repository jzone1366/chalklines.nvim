local collect = require 'chalklines.lib.collect'

local M = {}

local function get_terminal(p)
  vim.g.terminal_color_0 = p.overlay -- black
  vim.g.terminal_color_8 = p.subtle -- bright black
  vim.g.terminal_color_1 = p.red -- red
  vim.g.terminal_color_9 = p.red -- bright red
  vim.g.terminal_color_2 = p.green -- green
  vim.g.terminal_color_10 = p.green -- bright green
  vim.g.terminal_color_3 = p.yellow -- yellow
  vim.g.terminal_color_11 = p.yellow -- bright yellow
  vim.g.terminal_color_4 = p.blue -- blue
  vim.g.terminal_color_12 = p.blue -- bright blue
  vim.g.terminal_color_5 = p.magenta -- magenta
  vim.g.terminal_color_13 = p.magenta -- bright magenta
  vim.g.terminal_color_6 = p.cyan -- cyan
  vim.g.terminal_color_14 = p.cyan -- bright cyan
  vim.g.terminal_color_7 = p.text -- white
  vim.g.terminal_color_15 = p.text -- bright white
  return p
end

function M.get(cnf)
  local formats = require 'chalklines.formats'
  local palette = require 'chalklines.palette'

  local groups = cnf.groups

  local styles = {
    italic = (cnf.disable_italics and palette.none) or formats.italic,
    vert_split = (cnf.bold_vert_split and groups.border) or palette.none,
    background = (cnf.disable_background and palette.none) or groups.background,
    float_background = (cnf.disable_float_background and palette.none) or groups.panel,
  }

  local editor = require('chalklines.group.editor').get(palette, groups, styles)
  local syntax = require('chalklines.group.syntax').get(palette, groups, styles)

  local theme = collect.deep_extend(editor, syntax)

  for name, opts in pairs(cnf.modules or {}) do
    if type(opts) == 'table' then
      if opts.enable then
        theme = collect.deep_extend(theme, require('chalklines.group.modules.' .. name).get(palette, groups, styles))
      end
    else
      if opts then
        theme = collect.deep_extend(theme, require('chalklines.group.modules.' .. name).get(palette, groups, styles))
      end
    end
  end

  -- create terminal colors.
  get_terminal(palette)

  return theme
end

return M
