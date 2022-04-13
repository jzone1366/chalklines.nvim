local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    DiagnosticError = { fg = colorMaps.error },
    DiagnosticHint = { fg = colorMaps.hint },
    DiagnosticInfo = { fg = colorMaps.info },
    DiagnosticWarn = { fg = colorMaps.warn },

    DiagnosticSignError = { fg = colorMaps.error },
    DiagnosticSignHint = { fg = colorMaps.hint },
    DiagnosticSignInfo = { fg = colorMaps.info },
    DiagnosticSignWarn = { fg = colorMaps.warn },

    DiagnosticDefaultError = { fg = colorMaps.error },
    DiagnosticDefaultHint = { fg = colorMaps.hint },
    DiagnosticDefaultInfo = { fg = colorMaps.info },
    DiagnosticDefaultWarn = { fg = colorMaps.warn },

    DiagnosticFloatingError = { fg = colorMaps.error },
    DiagnosticFloatingHint = { fg = colorMaps.hint },
    DiagnosticFloatingInfo = { fg = colorMaps.info },
    DiagnosticFloatingWarn = { fg = colorMaps.warn },

    DiagnosticStatusLineError = { fg = colorMaps.error, bg = colorMaps.panel },
    DiagnosticStatusLineHint = { fg = colorMaps.hint, bg = colorMaps.panel },
    DiagnosticStatusLineInfo = { fg = colorMaps.info, bg = colorMaps.panel },
    DiagnosticStatusLineWarn = { fg = colorMaps.warn, bg = colorMaps.panel },

    DiagnosticUnderlineError = { sp = colorMaps.error, style = 'undercurl' },
    DiagnosticUnderlineHint = { sp = colorMaps.hint, style = 'undercurl' },
    DiagnosticUnderlineInfo = { sp = colorMaps.info, style = 'undercurl' },
    DiagnosticUnderlineWarn = { sp = colorMaps.warn, style = 'undercurl' },

    DiagnosticVirtualTextError = { fg = colorMaps.error },
    DiagnosticVirtualTextHint = { fg = colorMaps.hint },
    DiagnosticVirtualTextInfo = { fg = colorMaps.info },
    DiagnosticVirtualTextWarn = { fg = colorMaps.warn },
  }
end

return M
