-- kyazdani42/nvim-tree.lua
local M = {}

function M.get(p, groups)
  return {
    NvimTreeNormal = { fg = p.text },
    NvimTreeVertSplit = { link = 'VertSplit' },
    NvimTreeIndentMarker = { fg = p.hl_high },

    NvimTreeRootFolder = { fg = p.magenta },
    NvimTreeFolderName = { fg = p.blue },
    NvimTreeFolderIcon = { fg = p.blue },
    NvimTreeOpenedFolderName = { fg = p.blue },
    NvimTreeEmptyFolderName = { fg = p.muted },
    NvimTreeSymLink = { fg = groups.link },
    NvimTreeSpecialFile = { link = 'NvimTreeNormal' },
    NvimTreeImageFile = { fg = p.text },
    NvimTreeOpenedFile = { fg = p.text, bg = p.hl_med },
    NvimTreeWindowPicker = { fg = groups.background, bg = p.magenta },

    NvimTreeGitDeleted = { fg = groups.git_delete },
    NvimTreeGitDirty = { fg = groups.git_dirty },
    NvimTreeGitMerge = { fg = groups.git_merge },
    NvimTreeGitIgnored = { fg = groups.git_ignore },
    NvimTreeGitNew = { fg = groups.git_add },
    NvimTreeGitRenamed = { fg = groups.git_rename },
    NvimTreeGitStaged = { fg = groups.git_stage },

    NvimTreeFileDeleted = { fg = p.red },
    NvimTreeFileDirty = { fg = p.cyan },
    NvimTreeFileMerge = { fg = p.magenta },
    NvimTreeFileNew = { fg = p.blue },
    NvimTreeFileRenamed = { fg = p.green },
    NvimTreeFileStaged = { fg = p.magenta },
  }
end

return M
