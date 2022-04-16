-- https://github.com/phaazon/hop.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    HopNextKey = { bg = colorMaps.background, fg = p.green, style = 'bold,underline' },
    HopNextKey1 = { bg = colorMaps.background, fg = p.blue, style = 'bold' },
    HopNextKey2 = { bg = colorMaps.background, fg = p.cyan, style = 'bold,italic' },
    HopUnmatched = { bg = colorMaps.background, fg = p.subtle },
  }
end

return M
