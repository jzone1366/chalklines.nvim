-- https://github.com/ggandor/lightspeed.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    LightspeedLabel = { bg = p.subtle, fg = p.text },
    LightspeedOverlapped = { bg = p.subtle, fg = p.text },
    LightspeedLabelDistant = { bg = p.magenta, fg = p.text },
    LightspeedLabelDistantOverlapped = { bg = p.magenta, fg = p.text },
    LightspeedShortcut = { bg = colorMaps.background, fg = p.orange, style = 'italic' },
    LightspeedShortcutOverlapped = { bg = colorMaps.background, fg = p.orange, style = 'bold' },
    LightspeedMaskedChar = { bg = colorMaps.background, fg = p.red, style = 'undercurl' },
    LightspeedGreyWash = { bg = colorMaps.background, fg = p.muted },
    LightspeedUnlabeledMatch = { bg = colorMaps.background, fg = p.red, style = 'underline' },
    LightspeedOneCharMatch = { bg = colorMaps.background, fg = p.red, style = 'underline' },
    LightspeedUniqueChar = { bg = colorMaps.background, fg = p.green, style = 'strikethrough' },
    LightspeedPendingOpArea = { bg = colorMaps.background, fg = p.green, style = 'strikethrough' },
    LightspeedPendingChangeOpArea = { bg = colorMaps.background, fg = p.green, style = 'strikethrough' },
    LightspeedCursor = { fg = colorMaps.background, bg = p.text },
  }
end

return M
