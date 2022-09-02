local M = {}
local config = require('chalklines.config').config

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    -- https://github.com/chentau/marks.nvim/blob/555e8265989aa13249e76fd229226fb74101f905/doc/marks-nvim.txt#L278
    MarkSignHL = {
      fg = theme.palette.purple,
      bg = 'NONE',
      style = config.options.bold,
    },
    -- MarkSignNumHL = {  },
    MarkVirtTextHL = { fg = theme.palette.gray, style = config.options.italic },
  }
end

return M
