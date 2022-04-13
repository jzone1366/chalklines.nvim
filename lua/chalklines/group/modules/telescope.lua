-- nvim-telescope/telescope.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    TelescopeBorder = { fg = colorMaps.border },
    TelescopeMatching = { fg = p.cyan },
    TelescopeNormal = { fg = p.subtle },
    TelescopePromptNormal = { fg = p.text },
    TelescopePromptPrefix = { fg = p.subtle },
    TelescopeSelection = { fg = p.text, bg = p.overlay },
    TelescopeSelectionCaret = { fg = p.cyan, bg = p.overlay },
    TelescopeTitle = { fg = p.subtle },
  }
end

return M
