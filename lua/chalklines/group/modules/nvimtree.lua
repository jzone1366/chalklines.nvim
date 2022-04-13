-- kyazdani42/nvim-tree.lua
local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    NvimTreeNormal = { fg = p.text },
    NvimTreeVertSplit = { link = 'VertSplit' },
    NvimTreeIndentMarker = { fg = p.hl_high },

    NvimTreeRootFolder = { fg = p.magenta },
    NvimTreeFolderName = { fg = p.blue },
    NvimTreeFolderIcon = { fg = p.blue },
    NvimTreeOpenedFolderName = { fg = p.blue },
    NvimTreeEmptyFolderName = { fg = p.muted },
    NvimTreeSymLink = { fg = colorMaps.link },
    NvimTreeSpecialFile = { link = 'NvimTreeNormal' },
    NvimTreeImageFile = { fg = p.text },
    NvimTreeOpenedFile = { fg = p.text, bg = p.hl_med },
    NvimTreeWindowPicker = { fg = colorMaps.background, bg = p.magenta },

    NvimTreeGitDeleted = { fg = colorMaps.git_delete },
    NvimTreeGitDirty = { fg = colorMaps.git_dirty },
    NvimTreeGitMerge = { fg = colorMaps.git_merge },
    NvimTreeGitIgnored = { fg = colorMaps.git_ignore },
    NvimTreeGitNew = { fg = colorMaps.git_add },
    NvimTreeGitRenamed = { fg = colorMaps.git_rename },
    NvimTreeGitStaged = { fg = colorMaps.git_stage },

    NvimTreeFileDeleted = { fg = p.red },
    NvimTreeFileDirty = { fg = p.cyan },
    NvimTreeFileMerge = { fg = p.magenta },
    NvimTreeFileNew = { fg = p.blue },
    NvimTreeFileRenamed = { fg = p.green },
    NvimTreeFileStaged = { fg = p.magenta },
  }
end

return M
