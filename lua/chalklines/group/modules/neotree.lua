-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- :help neo-tree-highlights

local M = {}

function M.get(p, groups)
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

    NeoTreeGitModified        = { fg = groups.git_dirty },
    NeoTreeGitAdded           = { fg = groups.git_add },
    NeoTreeGitDeleted         = { fg = groups.git_delete },
    NeoTreeGitConflict        = { fg = p.orange, style = "italic" },
    NeoTreeGitIgnored         = { fg = groups.git_ignore },
    NeoTreeGitUntracked       = { fg = p.yellow }

  }
end

return M
