local swatches = require 'chalklines.core.swatches'

local meta = {
  name = 'chalklines_bright',
  light = true,
}

---@class ChalklinesPalette
local palette = {
  bg = swatches.gray0,
  fg = swatches.black8,
  red = swatches.red2,
  orange = swatches.orange2,
  yellow = swatches.yellow6,
  green = swatches.green6,
  cyan = swatches.cyan5,
  blue = swatches.blue2,
  pink = swatches.pink2,
  purple = swatches.purple2,
  white = swatches.gray0,
  black = swatches.black7,
  gray = swatches.gray6,
  highlight = swatches.yellow5,

  opacity = 0.1,
  none = 'NONE',
}

local function generate(cp)
  local color = require 'chalklines.lib.colors'

  return {
    cursorline = cp.cursorline or color.lighten(cp.bg, 0.97),
    color_column = cp.color_column or color.lighten(cp.bg, 0.97),
    indentline = cp.indentline or color.lighten(cp.bg, 0.93),
    selection = cp.selection or color.lighten(cp.bg, 0.8),

    -- Git diff
    diff_add = cp.diff_add or swatches.green1,
    diff_delete = cp.diff_delete or swatches.red0,
    diff_text = cp.diff_text or swatches.black9,

    -- Lualine colors
    bg_statusline = cp.bg_statusline or color.lighten(cp.bg, 0.95),
    fg_gutter = cp.fg_gutter or color.lighten(cp.bg, 0.70),

    -- Virtual text
    virtual_text_error = cp.virtual_text_error or color.lighten(cp.red, 0.7),
    virtual_text_warning = cp.virtual_text_warning or color.lighten(cp.yellow, 0.7),
    virtual_text_information = cp.virtual_text_information or color.lighten(cp.blue, 0.7),
    virtual_text_hint = cp.virtual_text_hint or color.lighten(cp.cyan, 0.8),
  }
end

return {
  meta = meta,
  palette = palette,
  generated = function(cp)
    return generate(cp)
  end,
}
