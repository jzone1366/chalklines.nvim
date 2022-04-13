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
  if cnf and cnf.options then
    local options = cnf.options
    local ovr = {
      italics = options.disable_italics,
      vert_split = options.bold_vert_split,
      background = options.disable_background,
      float_background = options.disable_float_background,
    }
    return collect.deep_extend(defaults, ovr)
  end
  return defaults
end

return M
