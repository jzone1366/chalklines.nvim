-- https://github.com/simrat39/lsp-trouble.nvim

local M = {}

function M.get(p)
  return {
    LspTroubleText = { fg = p.green },
    LspTroubleCount = { fg = p.subtle, bg = p.surface },
    LspTroubleNormal = { fg = p.text, bg = p.surface },
  }
end

return M
