local M = {}

function M.get(p)
  return {
    DashboardShortCut = { fg = p.magenta },
    DashboardHeader = { fg = p.blue },
    DashboardCenter = { fg = p.green },
    DashboardFooter = { fg = p.yellow, style = 'italic' },
  }
end

return M
