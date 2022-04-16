-- https://github.com/justinmk/vim-sneak

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  -- stylua: ignore
  return {
    Sneak      = { fg = colorMaps.background, bg = p.magenta },
    SneakScope = { bg = p.hl_med },
  }
end

return M
