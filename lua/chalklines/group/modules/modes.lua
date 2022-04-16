-- mvllow/modes.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    ModesCopy = { bg = p.yellow },
    ModesDelete = { bg = p.red },
    ModesInsert = { bg = p.blue },
    ModesVisual = { bg = p.magenta },
  }
end

return M
