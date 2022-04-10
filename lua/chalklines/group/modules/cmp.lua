local M = {}

-- hrsh7th/nvim-cmp
function M.get(p)
  -- stylua: ignore
  return {
    CmpDocumentation         = { fg = p.subtle, bg = p.base },
    CmpDocumentationBorder   = { fg = p.hl_low, bg = p.base },

    CmpItemAbbr              = { fg = p.subtle, },
    CmpItemAbbrDeprecated    = { fg = p.subtle, style = "strikethrough" },
    CmpItemAbbrMatch         = { fg = p.text, style = "bold" },
    CmpItemAbbrMatchFuzzy    = { fg = p.text, style = "bold" },

    CmpItemKindDefault       = { fg = p.muted, },
    CmpItemMenu              = { link = "Comment" },

    CmpItemKindKeyword       = { link = "Identifier" },

    CmpItemKindVariable      = { p.blue },
    CmpItemKindConstant      = { link = "TSConstant" },
    CmpItemKindReference     = { link = "Keyword" },
    CmpItemKindValue         = { link = "Keyword" },

    CmpItemKindFunction      = { link = "Function" },
    CmpItemKindMethod        = { link = "Function" },
    CmpItemKindConstructor   = { link = "Function" },

    CmpItemKindInterface     = { link = "Constant" },
    CmpItemKindEvent         = { link = "Constant" },
    CmpItemKindEnum          = { link = "Constant" },
    CmpItemKindUnit          = { link = "Constant" },

    CmpItemKindClass         = { p.yellow },
    CmpItemKindStruct        = { link = "Type" },

    CmpItemKindModule        = { link = "TSNamespace" },

    CmpItemKindProperty      = { link = "TSProperty" },
    CmpItemKindField         = { link = "TSField" },
    CmpItemKindTypeParameter = { link = "TSField" },
    CmpItemKindEnumMember    = { link = "TSField" },
    CmpItemKindOperator      = { link = "Operator" },
    CmpItemKindSnippet       = { fg = p.magenta },
  }
end

return M
