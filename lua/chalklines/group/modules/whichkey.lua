-- folke/which-key.nvim
local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    WhichKey = { link = 'Identifier' },
    WhichKeyGroup = { link = 'Function' },
    WhichKeyDesc = { link = 'Keyword' },
    WhichKeySeperator = { link = 'Comment' },
    WhichKeyFloat = { bg = colorMaps.panel },
    WhichKeyValue = { link = 'Comment' },
  }
end

return M
