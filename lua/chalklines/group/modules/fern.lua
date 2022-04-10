-- https://github.com/lambdalisue/fern.vim

local M = {}

function M.get(p)
  return {
    FernBranchText = { fg = p.blue },
  }
end

return M
