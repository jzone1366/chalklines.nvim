-- ray-x/lsp_signature.nvim
local M = {}

function M.get(p)
  return {
    LspSignatureActiveParameter = { bg = p.overlay },
  }
end

return M
