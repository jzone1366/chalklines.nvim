local M = {}

---@class ChalklinesConfig
---@field options ChalklinesOptions
---@field palette ChalklinesPalette
---@field styles ChalklinesStyles
---@field colorMaps ChalklinesColorMaps
---@field modules ChalklinesModules
---@type ChalklinesConfig
M.config = {}

function M.create(user_opts)
  M.config.palette = require('chalklines.palettes').init()
  M.config.colorMaps = require('chalklines.config.colorMaps').get(user_opts)
  M.config.styles = require('chalklines.config.styles').get(user_opts)
  M.config.modules = require('chalklines.config.modules').get(user_opts)

  return M.config
end

function M.get()
  return M.config
end

return M
