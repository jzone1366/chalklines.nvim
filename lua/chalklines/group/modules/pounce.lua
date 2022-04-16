-- rlane/pounce.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    PounceAccept = { fg = p.red, bg = p.hl_high },
    PounceAcceptBest = { fg = p.base, bg = p.yellow },
    PounceGap = { link = 'Search' },
    PounceMatch = { link = 'Search' },
  }
end

return M
