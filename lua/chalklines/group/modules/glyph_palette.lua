-- https://github.com/lambdalisue/glyph-palette.vim/

local M = {}

-- glyph Palette
function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    GlyphPalette0 = { fg = p.overlay },
    GlyphPalette1 = { fg = p.red },
    GlyphPalette2 = { fg = p.cyan },
    GlyphPalette3 = { fg = p.yellow },
    GlyphPalette4 = { fg = p.blue },
    GlyphPalette5 = { fg = p.orange },
    GlyphPalette6 = { fg = p.cyan },
    GlyphPalette7 = { fg = p.foreground },
    GlyphPalette8 = { fg = p.pink },
    GlyphPalette9 = { fg = p.red },
  }
end

return M
