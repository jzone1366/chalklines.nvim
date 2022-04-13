-- https://github.com/RRethy/vim-illuminate

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  -- stylua: ignore
  return {
    illuminatedWord    = { link = "LspReferenceText" },
    illuminatedCurWord = { link = "LspReferenceText" },
  }
end

return M
