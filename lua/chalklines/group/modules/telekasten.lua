--https://github.com/renerocksai/telekasten.nvim

local M = {}

function M.get(p)
  return {
    tkLink = { fg = p.blue },
    tkBrackets = { fg = p.magenta },
    tkTag = { fg = p.cyan },
  }
end

return M
