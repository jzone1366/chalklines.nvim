-- rlane/pounce.nvim

local M = {}

function M.get(p)
  return {
    PounceAccept = { fg = p.red, bg = p.hl_high },
    PounceAcceptBest = { fg = p.base, bg = p.yellow },
    PounceGap = { link = 'Search' },
    PounceMatch = { link = 'Search' },
  }
end

return M
