local M = {}

function M.get(p, groups)
  -- stylua: ignore
  return {
    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText  = { bg = groups.panel }, -- used for highlighting "text" references
    LspReferenceRead  = { bg = groups.panel }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = groups.panel }, -- used for highlighting "write" references

    LspCodeLens                 = { fg = groups.comment }, -- Used to color the virtual text of the codelens
    LspCodeLensSeparator        = { fg = p.subtle }, -- Used to color the separator between two or more code lens
    LspSignatureActiveParameter = { fg = p.hl_med }, -- Used to highlight the active parameter in the signature help
  }
end

return M
