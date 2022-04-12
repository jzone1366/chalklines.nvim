local util = require 'chalklines.util'

local M = {}

local config = {}

---@param user_opts ChalklinesConfig
function M.setup(user_opts)
  user_opts = user_opts or {}
  local opts = require('chalklines.options').get(user_opts)
  vim.g.chalklines_variant = 'main'

  if opts.groups and type(opts.groups.headings) == 'string' then
    opts.groups.headings = {
      h1 = opts.groups.headings,
      h2 = opts.groups.headings,
      h3 = opts.groups.headings,
      h4 = opts.groups.headings,
      h5 = opts.groups.headings,
      h6 = opts.groups.headings,
    }
  end

  config = require('chalklines.config').get(opts)
end

function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = 'chalklines'

  local theme = require('chalklines.mapper').get(config)

  for group, color in pairs(theme) do
    if config.highlight_groups[group] ~= nil then
      util.highlight(group, config.highlight_groups[group])
    else
      util.highlight(group, color)
    end
  end

  require 'chalklines.galaxyline.theme'
end

return M
