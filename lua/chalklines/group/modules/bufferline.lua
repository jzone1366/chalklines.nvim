--https://github.com/akinsho/bufferline.nvim

local M = {}

function M.get(p, groups)
  local inactive_bg = p.base

  -- stylua: ignore
  return {
    BufferLineFill                = { bg = p.surface },
    BufferLineBackground          = { fg = p.text, bg = inactive_bg }, -- others
    BufferLineBufferVisible       = { fg = p.subtle, bg = inactive_bg },
    BufferLineBufferSelected      = { fg = p.text, bg = p.surface, style = 'bold,italic' }, -- current
    BufferLineTab                 = { fg = p.subtle, bg = p.surface },
    BufferLineTabSelected         = { fg = p.red, bg = p.blue },
    BufferLineTabClose            = { fg = p.red, bg = inactive_bg },
    BufferLineIndicatorSelected   = { fg = p.orange, bg = p.surface },
    -- separators
    BufferLineSeparator           = { fg = inactive_bg, bg = inactive_bg },
    BufferLineSeparatorVisible    = { fg = inactive_bg, bg = inactive_bg },
    BufferLineSeparatorSelected   = { fg = inactive_bg, bg = inactive_bg },
    -- close buttons
    BufferLineCloseButton         = { fg = p.subtle, bg = inactive_bg },
    BufferLineCloseButtonVisible  = { fg = p.subtle, bg = inactive_bg },
    BufferLineCloseButtonSelected = { fg = p.red, bg = p.surface },
    -- modified
    BufferLineModified            = { fg = groups.hint,  bg = p.base },
    BufferLineModifiedVisible     = { fg = groups.hint,  bg = p.hl_med },
    BufferLineModifiedSelected    = { fg = groups.hint,  bg = p.hl_high },
    -- errors
    BufferLineError               = { fg = groups.error, bg = groups.error },
    BufferLineErrorDiagnostic     = { fg = groups.error, bg = groups.error },
  }
end

return M
