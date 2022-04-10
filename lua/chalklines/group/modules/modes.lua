-- mvllow/modes.nvim

local M = {}

function M.get(p)
  return {
    ModesCopy = { bg = p.yellow },
    ModesDelete = { bg = p.red },
    ModesInsert = { bg = p.blue },
    ModesVisual = { bg = p.magenta },
  }
end

return M
