-- https://github.com/simrat39/symbols-outline.nvim

local M = {}

function M.get(p, groups, styles)
  -- stylua: ignore
  return {
    FocusedSymbol = { link = "Search" },
    SymbolOutlineConnector = { link = "Conceal" },
  }
end

return M
