-- https://github.com/simrat39/symbols-outline.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  -- stylua: ignore
  return {
    FocusedSymbol = { link = "Search" },
    SymbolOutlineConnector = { link = "Conceal" },
  }
end

return M
