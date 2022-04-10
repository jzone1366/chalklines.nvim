-- rcarriga/nvim-notify
local M = {}

function M.get(p)
  return {
    NotifyERRORBorder = { fg = p.red },
    NotifyWARNBorder = { fg = p.yellow },
    NotifyINFOBorder = { fg = p.blue },
    NotifyDEBUGBorder = { fg = p.muted },
    NotifyTRACEBorder = { fg = p.magenta },

    NotifyERRORTitle = { link = 'NotifyERRORBorder' },
    NotifyWARNTitle = { link = 'NotifyWARNBorder' },
    NotifyINFOTitle = { link = 'NotifyINFOBorder' },
    NotifyDEBUGTitle = { link = 'NotifyDEBUGBorder' },
    NotifyTRACETitle = { link = 'NotifyTRACEBorder' },

    NotifyERRORIcon = { link = 'NotifyERRORBorder' },
    NotifyWARNIcon = { link = 'NotifyWARNBorder' },
    NotifyINFOIcon = { link = 'NotifyINFOBorder' },
    NotifyDEBUGIcon = { link = 'NotifyDEBUGBorder' },
    NotifyTRACEIcon = { link = 'NotifyTRACEBorder' },
  }
end

return M
