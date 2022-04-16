-- https://github.com/lambdalisue/fern.vim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    FernBranchText = { fg = p.blue },
  }
end

return M
