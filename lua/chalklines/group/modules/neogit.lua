-- TimUntersberger/neogit

local M = {}

function M.get(p, groups, styles)
  return {
    NeogitBranch = { fg = groups.warn },
    NeogitRemote = { fg = groups.hint },

    NeogitHunkHeader = { fg = groups.info, bg = p.hl_low },
    NeogitHunkHeaderHighlight = { fg = groups.info, bg = p.hl_high },

    NeogitDiffAdd = { fg = groups.git_add },
    NeogitDiffDelete = { fg = groups.git_delete },

    NeogitDiffAddHighlight = { fg = p.blue, bg = p.hl_med },
    NeogitDiffDeleteHighlight = { bg = p.hl_low },
    NeogitDiffContextHighlight = { fg = p.red, bg = p.hl_med },

    NeogitNotificationInfo = { fg = groups.info },
    NeogitNotificationWarning = { fg = groups.warn },
    NeogitNotificationError = { fg = groups.error },
  }
end

return M
