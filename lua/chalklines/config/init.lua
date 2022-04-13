local M = {}

---@class ChalklinesConfig
---@field options ChalklinesOptions
---@field palette ChalklinesPalette
---@field styles ChalklinesStyles
---@field colorMaps ChalklinesColorMaps
---@field modules ChalklinesModules
---@type ChalklinesConfig
local config = {}

function M.get(user_opts)
  config.palette = require('chalklines.palettes').init()
  config.colorMaps = require('chalklines.config.colorMaps').get(user_opts)
  config.styles = require('chalklines.config.styles').get(user_opts)
  config.modules = require('chalklines.config.modules').get(user_opts)

  return config
end

return M
