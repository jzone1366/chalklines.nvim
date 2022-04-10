local M = {}

-- romgrk/barbar.nvim
function M.get(p, groups)
  return {
    BufferCurrent = { fg = p.text, bg = p.overlay },
    BufferCurrentIndex = { fg = p.text, bg = p.overlay },
    BufferCurrentMod = { fg = p.blue, bg = p.overlay },
    BufferCurrentSign = { fg = p.subtle, bg = p.overlay },
    BufferCurrentTarget = { fg = p.yellow, bg = p.overlay },
    BufferInactive = { fg = p.subtle },
    BufferInactiveIndex = { fg = p.subtle },
    BufferInactiveMod = { fg = p.blue },
    BufferInactiveSign = { fg = p.muted },
    BufferInactiveTarget = { fg = p.yellow },
    BufferTabpageFill = { fg = groups.background, bg = groups.background },
    BufferVisible = { fg = p.subtle },
    BufferVisibleIndex = { fg = p.subtle },
    BufferVisibleMod = { fg = p.blue },
    BufferVisibleSign = { fg = p.muted },
    BufferVisibleTarget = { fg = p.yellow },
  }
end

return M
