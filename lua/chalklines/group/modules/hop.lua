-- https://github.com/phaazon/hop.nvim

local M = {}

function M.get(p, groups)
  return {
    HopNextKey = { bg = groups.background, fg = p.green, style = 'bold,underline' },
    HopNextKey1 = { bg = groups.background, fg = p.blue, style = 'bold' },
    HopNextKey2 = { bg = groups.background, fg = p.cyan, style = 'bold,italic' },
    HopUnmatched = { bg = groups.background, fg = p.subtle },
  }
end

return M
