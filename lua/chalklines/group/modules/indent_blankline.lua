-- luka-reineke/indent-blankline.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    IndentBlanklineChar = { fg = p.muted },
  }
end

return M
