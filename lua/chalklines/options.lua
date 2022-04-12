local collect = require 'chalklines.lib.collect'

local M = {}

local defaults = {
  bold_vert_split = false,
  dim_nc_background = false,
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,
}
---@class ChalklinesOptions
---@field bold_vert_split boolean
---@field dim_nc_background boolean
---@field disable_background boolean
---@field disable_float_background boolean
---@field disable_italics boolean
function M.get(cnf)
  if cnf then
    local ovr = cnf.options or {}
    return collect.deep_extend(defaults, ovr)
  end
  return defaults
end

return M
