-- tami5/lspsaga.nvim (fork of glepnir/lspsaga.nvim)
local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    DefinitionCount = { fg = p.cyan },
    DefinitionIcon = { fg = p.cyan },
    DefintionPreviewTitle = { fg = p.cyan, style = 'bold' },
    LspFloatWinBorder = { fg = colorMaps.border },
    LspFloatWinNormal = { bg = colorMaps.background },
    LspSagaAutoPreview = { fg = p.subtle },
    LspSagaCodeActionBorder = { fg = colorMaps.border },
    LspSagaCodeActionContent = { fg = p.blue },
    LspSagaCodeActionTitle = { fg = p.yellow, style = 'bold' },
    LspSagaCodeActionTruncateLine = { link = 'LspSagaCodeActionBorder' },
    LspSagaDefPreviewBorder = { fg = colorMaps.border },
    LspSagaDiagnosticBorder = { fg = colorMaps.border },
    LspSagaDiagnosticHeader = { fg = p.yellow, style = 'bold' },
    LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
    LspSagaDocTruncateLine = { link = 'LspSagaHoverBorder' },
    LspSagaFinderSelection = { fg = p.yellow },
    LspSagaHoverBorder = { fg = colorMaps.border },
    LspSagaLspFinderBorder = { fg = colorMaps.border },
    LspSagaRenameBorder = { fg = p.green },
    LspSagaRenamePromptPrefix = { fg = p.love },
    LspSagaShTruncateLine = { link = 'LspSagaSignatureHelpBorder' },
    LspSagaSignatureHelpBorder = { fg = p.green },
    ReferencesCount = { fg = p.cyan },
    ReferencesIcon = { fg = p.cyan },
    SagaShadow = { bg = p.overlay },
    TargetWord = { fg = p.magenta },
  }
end

return M
