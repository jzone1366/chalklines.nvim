-- https://github.com/RRethy/vim-illuminate

local M = {}

function M.get(p, groups, styles)
  -- stylua: ignore
  return {
    illuminatedWord    = { link = "LspReferenceText" },
    illuminatedCurWord = { link = "LspReferenceText" },
  }
end

return M
