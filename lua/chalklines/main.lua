local M = {}

---Clear highlights and set the syntax
---@return nil
local function setup_neovim()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.cmd 'set termguicolors'
end

---Set the highlight groups
---@return nil
local function set_highlights()
  local next = next
  local groups = require 'chalklines.highlight'
  local highlights = require 'chalklines.lib.highlight'

  highlights.create(groups.editor)
  highlights.create(groups.syntax)
  highlights.create(groups.plugins)

  if next(groups.custom) ~= nil then
    highlights.create(groups.custom)
  end

  if next(groups.ft) ~= nil then
    if require('chalklines.utils.init').use_nvim_api then
      require('chalklines.lib.ft_highlight').create()
    end
  end
end

---Set the terminal colors
---@param theme table
---@return nil
local function set_terminal_colors(theme)
  vim.g.terminal_color_0 = theme.palette.black
  vim.g.terminal_color_1 = theme.palette.red
  vim.g.terminal_color_2 = theme.palette.green
  vim.g.terminal_color_3 = theme.palette.yellow
  vim.g.terminal_color_4 = theme.palette.blue
  vim.g.terminal_color_5 = theme.palette.purple
  vim.g.terminal_color_6 = theme.palette.cyan
  vim.g.terminal_color_7 = theme.palette.black

  vim.g.terminal_color_8 = theme.palette.gray
  vim.g.terminal_color_9 = theme.palette.red
  vim.g.terminal_color_10 = theme.palette.green
  vim.g.terminal_color_11 = theme.palette.yellow
  vim.g.terminal_color_12 = theme.palette.blue
  vim.g.terminal_color_13 = theme.palette.purple
  vim.g.terminal_color_14 = theme.palette.cyan
  vim.g.terminal_color_15 = theme.palette.white
end

---Set vim global variables for use outside of the theme
---@param theme table the theme to use
---@return nil
local function set_info(theme)
  vim.g.colors_name = 'chalklines_main'
  vim.g.chalklines_style = theme.meta.name
  vim.g.chalklines_theme = theme.meta.name
  vim.g.chalklines_colors = require('chalklines.utils.collect').deep_extend(theme.palette, theme.generated, theme.meta)
end

---Carry out the neccessary work to load the given theme
---@param theme table  the theme to load
---@return nil
function M.load(theme)
  -- Prevent double loading of the theme
  if vim.g.colors_name == 'chalklines' and vim.g.chalklines_theme == theme.meta.name then
    return
  end

  setup_neovim()
  set_highlights()
  set_info(theme)

  if require('chalklines.config').config.options.terminal_colors then
    set_terminal_colors(theme)
  end
end

return M
