local collect = require 'chalklines.lib.collect'
local M = {}

---@class ChalklinesStyles
local defaults = {
  italic = true,
  vert_split = true,
  background = true,
  float_background = true,
}

function M.get(cnf)
  local formats = require 'chalklines.formats'

  if cnf and cnf.options then
    local opts = cnf.options
    local ovr = {
      italic = (opts.disable_italics and cnf.palette.none) or formats.italic,
      vert_split = (opts.bold_vert_split and cnf.colorMaps.border) or cnf.palette.none,
      background = (opts.disable_background and cnf.palette.none) or cnf.colorMaps.background,
      float_background = (opts.disable_float_background and cnf.palette.none) or cnf.colorMaps.panel,
    }

    return collect.deep_extend(defaults, ovr)
  end

  return defaults
end

return M
