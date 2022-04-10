-- luka-reineke/indent-blankline.nvim

local M = {}

function M.get(p)
  return {
    IndentBlanklineChar = { fg = p.muted },
  }
end

return M
