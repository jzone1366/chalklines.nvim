local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    GitSignsAdd = { link = 'diffAdded' },
    GitSignsChange = { link = 'diffChanged' },
    GitSignsDelete = { link = 'diffRemoved' },
  }
end

return M
