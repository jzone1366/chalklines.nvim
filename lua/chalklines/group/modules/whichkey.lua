-- folke/which-key.nvim
local M = {}

function M.get(p, groups)
  return {
    WhichKey = { link = 'Identifier' },
    WhichKeyGroup = { link = 'Function' },
    WhichKeyDesc = { link = 'Keyword' },
    WhichKeySeperator = { link = 'Comment' },
    WhichKeySeparator = { link = 'Comment' },
    WhichKeyFloat = { bg = groups.panel },
    WhichKeyValue = { link = 'Comment' },
  }
end

return M
