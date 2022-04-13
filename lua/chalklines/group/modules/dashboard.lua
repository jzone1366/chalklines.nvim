local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    DashboardShortCut = { fg = p.magenta },
    DashboardHeader = { fg = p.blue },
    DashboardCenter = { fg = p.green },
    DashboardFooter = { fg = p.yellow, style = 'italic' },
  }
end

return M
