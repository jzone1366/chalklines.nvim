--https://github.com/renerocksai/telekasten.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    tkLink = { fg = p.blue },
    tkBrackets = { fg = p.magenta },
    tkTag = { fg = p.cyan },
  }
end

return M
