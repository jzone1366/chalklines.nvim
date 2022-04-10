-- https://github.com/ggandor/lightspeed.nvim

local M = {}

function M.get(p, groups)
  return {
    LightspeedLabel = { bg = p.subtle, fg = p.text },
    LightspeedOverlapped = { bg = p.subtle, fg = p.text },
    LightspeedLabelDistant = { bg = p.magenta, fg = p.text },
    LightspeedLabelDistantOverlapped = { bg = p.magenta, fg = p.text },
    LightspeedShortcut = { bg = groups.background, fg = p.orange, style = 'italic' },
    LightspeedShortcutOverlapped = { bg = groups.background, fg = p.orange, style = 'bold' },
    LightspeedMaskedChar = { bg = groups.background, fg = p.red, style = 'undercurl' },
    LightspeedGreyWash = { bg = groups.background, fg = p.muted },
    LightspeedUnlabeledMatch = { bg = groups.background, fg = p.red, style = 'underline' },
    LightspeedOneCharMatch = { bg = groups.background, fg = p.red, style = 'underline' },
    LightspeedUniqueChar = { bg = groups.background, fg = p.green, style = 'strikethrough' },
    LightspeedPendingOpArea = { bg = groups.background, fg = p.green, style = 'strikethrough' },
    LightspeedPendingChangeOpArea = { bg = groups.background, fg = p.green, style = 'strikethrough' },
    LightspeedCursor = { fg = groups.background, bg = p.text },
  }
end

return M
