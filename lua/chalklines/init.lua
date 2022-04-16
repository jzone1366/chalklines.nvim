local util = require 'chalklines.util'

local M = {}

---@param user_opts ChalklinesConfig
function M.setup(user_opts)
  local opts = user_opts or {}
  vim.g.chalklines_variant = 'main'

  local cnf = require('chalklines.config').create(opts)

  if cnf.colorsMaps and type(cnf.colorsMaps.headings) == 'string' then
    cnf.colorsMaps.headings = {
      h1 = cnf.colorsMaps.headings,
      h2 = cnf.colorsMaps.headings,
      h3 = cnf.colorsMaps.headings,
      h4 = cnf.colorsMaps.headings,
      h5 = cnf.colorsMaps.headings,
      h6 = cnf.colorsMaps.headings,
    }
  end

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
