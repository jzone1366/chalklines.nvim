-- TimUntersberger/neogit

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    NeogitBranch = { fg = colorMaps.warn },
    NeogitRemote = { fg = colorMaps.hint },

    NeogitHunkHeader = { fg = colorMaps.info, bg = p.hl_low },
    NeogitHunkHeaderHighlight = { fg = colorMaps.info, bg = p.hl_high },

    NeogitDiffAdd = { fg = colorMaps.git_add },
    NeogitDiffDelete = { fg = colorMaps.git_delete },

    NeogitDiffAddHighlight = { fg = p.blue, bg = p.hl_med },
    NeogitDiffDeleteHighlight = { bg = p.hl_low },
    NeogitDiffContextHighlight = { fg = p.red, bg = p.hl_med },

    NeogitNotificationInfo = { fg = colorMaps.info },
    NeogitNotificationWarning = { fg = colorMaps.warn },
    NeogitNotificationError = { fg = colorMaps.error },
  }
end

return M
