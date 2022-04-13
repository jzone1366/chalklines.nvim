local util = require 'chalklines.util'

local M = {}

---@param user_opts ChalklinesConfig
function M.setup(user_opts)
  user_opts = user_opts or {}
  local opts = require('chalklines.options').get(user_opts)
  vim.g.chalklines_variant = 'main'

  if opts.colorsMaps and type(opts.colorsMaps.headings) == 'string' then
    opts.colorsMaps.headings = {
      h1 = opts.colorsMaps.headings,
      h2 = opts.colorsMaps.headings,
      h3 = opts.colorsMaps.headings,
      h4 = opts.colorsMaps.headings,
      h5 = opts.colorsMaps.headings,
      h6 = opts.colorsMaps.headings,
    }
  end

  local cnf = require('chalklines.config').get(opts)

  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = 'chalklines'

  local theme = require('chalklines.mapper').get(cnf)

  for group, color in pairs(theme) do
    util.highlight(group, color)
  end

  require 'chalklines.galaxyline.theme'
end

return M
