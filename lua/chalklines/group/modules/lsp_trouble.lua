-- https://github.com/simrat39/lsp-trouble.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    LspTroubleText = { fg = p.green },
    LspTroubleCount = { fg = p.subtle, bg = p.surface },
    LspTroubleNormal = { fg = p.text, bg = p.surface },
  }
end

return M
