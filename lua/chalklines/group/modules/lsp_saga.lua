-- tami5/lspsaga.nvim (fork of glepnir/lspsaga.nvim)
local M = {}

function M.get(p, groups)
  return {
    DefinitionCount = { fg = p.cyan },
    DefinitionIcon = { fg = p.cyan },
    DefintionPreviewTitle = { fg = p.cyan, style = 'bold' },
    LspFloatWinBorder = { fg = groups.border },
    LspFloatWinNormal = { bg = groups.background },
    LspSagaAutoPreview = { fg = p.subtle },
    LspSagaCodeActionBorder = { fg = groups.border },
    LspSagaCodeActionContent = { fg = p.blue },
    LspSagaCodeActionTitle = { fg = p.yellow, style = 'bold' },
    LspSagaCodeActionTruncateLine = { link = 'LspSagaCodeActionBorder' },
    LspSagaDefPreviewBorder = { fg = groups.border },
    LspSagaDiagnosticBorder = { fg = groups.border },
    LspSagaDiagnosticHeader = { fg = p.yellow, style = 'bold' },
    LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
    LspSagaDocTruncateLine = { link = 'LspSagaHoverBorder' },
    LspSagaFinderSelection = { fg = p.yellow },
    LspSagaHoverBorder = { fg = groups.border },
    LspSagaLspFinderBorder = { fg = groups.border },
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
