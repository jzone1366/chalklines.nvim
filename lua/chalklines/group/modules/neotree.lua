-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- :help neo-tree-highlights

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  -- stylua: ignore
  return {
    NeoTreeNormal             = { fg = p.text },
    NeoTreeNormalNC           = { link = "NeoTreeNormal" },
    NeoTreeIndentMarker       = { fg = p.subtle },

    NeoTreeRootName           = { fg = p.magenta, style = "bold" },
    NeoTreeDirectoryName      = { fg = p.blue },
    NeoTreeDirectoryIcon      = { fg = p.blue },
    NeoTreeDotfile            = { fg = p.cyan },
    NeoTreeSymbolicLinkTarget = { fg = p.magenta },
    NeoTreeFileName           = { fg = p.subtle },
    NeoTreeFileNameOpened     = { fg = p.magenta },
    NeoTreeDimText            = { link = "Conceal" },

    NeoTreeGitModified        = { fg = colorMaps.git_dirty },
    NeoTreeGitAdded           = { fg = colorMaps.git_add },
    NeoTreeGitDeleted         = { fg = colorMaps.git_delete },
    NeoTreeGitConflict        = { fg = p.orange, style = "italic" },
    NeoTreeGitIgnored         = { fg = colorMaps.git_ignore },
    NeoTreeGitUntracked       = { fg = p.yellow }

  }
end

return M
