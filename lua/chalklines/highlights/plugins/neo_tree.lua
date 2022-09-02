local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  local config = require('chalklines.config').config

  return {
    NeoTreeNormalNC = { -- Color when nvim-tree is no longer in focus
      bg = config.options.transparency and 'NONE'
          or (config.options.window_unfocussed_color and theme.generated.color_column or theme.palette.bg),
    },
    NeoTreeSymbolicLinkTarget = {
      fg = theme.palette.cyan,
      style = config.options.underline,
    },
    NeoTreeDirectoryName = { fg = theme.palette.blue },
    NeoTreeDirectoryIcon = { fg = theme.palette.purple },
    NeoTreeRootName = {
      fg = theme.palette.purple,
      style = config.options.bold,
    },
    NeoTreeFileIcon = {
      fg = theme.palette.blue,
    },
    NeoTreeFileName = {
      fg = theme.palette.fg,
    },
    NeoTreeFileNameOpened = {
      fg = theme.palette.purple,
      style = config.options.italic,
    },
    NeoTreeIndentMarker = { fg = theme.palette.gray },
    NeoTreeTitleBar = { fg = theme.palette.bg, bg = theme.palette.purple },
    NeoTreeFloatTitle = { fg = theme.palette.bg, bg = theme.palette.purple },

    NeoTreeGitAdded = { fg = theme.palette.green },
    NeoTreeGitConflict = { fg = theme.palette.blue },
    NeoTreeGitDeleted = { fg = theme.palette.red },
    NeoTreeGitModified = { fg = theme.palette.yellow },
    NeoTreeGitIgnored = { fg = theme.palette.gray },
    NeoTreeGitUntracked = { fg = theme.palette.gray },

    NeoTreeModified = { fg = theme.palette.orange },
  }
end

return M
