local M = {}

function M.get(_, groups)
  return {
    DiagnosticError = { fg = groups.error },
    DiagnosticHint = { fg = groups.hint },
    DiagnosticInfo = { fg = groups.info },
    DiagnosticWarn = { fg = groups.warn },

    DiagnosticSignError = { fg = groups.error },
    DiagnosticSignHint = { fg = groups.hint },
    DiagnosticSignInfo = { fg = groups.info },
    DiagnosticSignWarn = { fg = groups.warn },

    DiagnosticDefaultError = { fg = groups.error },
    DiagnosticDefaultHint = { fg = groups.hint },
    DiagnosticDefaultInfo = { fg = groups.info },
    DiagnosticDefaultWarn = { fg = groups.warn },

    DiagnosticFloatingError = { fg = groups.error },
    DiagnosticFloatingHint = { fg = groups.hint },
    DiagnosticFloatingInfo = { fg = groups.info },
    DiagnosticFloatingWarn = { fg = groups.warn },

    DiagnosticStatusLineError = { fg = groups.error, bg = groups.panel },
    DiagnosticStatusLineHint = { fg = groups.hint, bg = groups.panel },
    DiagnosticStatusLineInfo = { fg = groups.info, bg = groups.panel },
    DiagnosticStatusLineWarn = { fg = groups.warn, bg = groups.panel },

    DiagnosticUnderlineError = { sp = groups.error, style = 'undercurl' },
    DiagnosticUnderlineHint = { sp = groups.hint, style = 'undercurl' },
    DiagnosticUnderlineInfo = { sp = groups.info, style = 'undercurl' },
    DiagnosticUnderlineWarn = { sp = groups.warn, style = 'undercurl' },

    DiagnosticVirtualTextError = { fg = groups.error },
    DiagnosticVirtualTextHint = { fg = groups.hint },
    DiagnosticVirtualTextInfo = { fg = groups.info },
    DiagnosticVirtualTextWarn = { fg = groups.warn },
  }
end

return M
