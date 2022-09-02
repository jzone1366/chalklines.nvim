local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  local config = require('chalklines.config').config

  return {
    CopilotSuggestion = { fg = theme.palette.gray, style = config.options.italic },
  }
end

return M
