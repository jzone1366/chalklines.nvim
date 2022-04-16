-- ray-x/lsp_signature.nvim
local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    LspSignatureActiveParameter = { bg = p.overlay },
  }
end

return M
