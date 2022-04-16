local blend = require('chalklines.util').blend
local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    -- Comment = { fg = p.subtle }
    ColorColumn = { bg = p.hl_high },
    Conceal = { bg = p.none },
    -- Cursor = {},
    CursorColumn = { bg = p.hl_low },
    -- CursorIM = {},
    CursorLine = { bg = p.hl_low },
    CursorLineNr = { fg = p.text },
    DarkenedPanel = { bg = colorMaps.panel },
    DarkenedStatusline = { bg = colorMaps.panel },
    DiffAdd = { bg = blend(colorMaps.git_add, colorMaps.background, 0.5) },
    DiffChange = { bg = p.overlay },
    DiffDelete = { bg = blend(colorMaps.git_delete, colorMaps.background, 0.5) },
    DiffText = { bg = blend(colorMaps.git_text, colorMaps.background, 0.5) },
    diffAdded = { link = 'DiffAdd' },
    diffChanged = { link = 'DiffChange' },
    diffRemoved = { link = 'DiffDelete' },
    Directory = { fg = p.blue, bg = p.none },
    -- EndOfBuffer = {},
    ErrorMsg = { fg = p.red, style = 'bold' },
    FloatBorder = { fg = colorMaps.border },
    FoldColumn = { fg = p.muted },
    Folded = { fg = p.text, bg = colorMaps.panel },
    IncSearch = { fg = p.base, bg = p.cyan },
    LineNr = { fg = p.muted },
    MatchParen = { fg = p.text, bg = p.hl_med },
    ModeMsg = { fg = p.subtle },
    MoreMsg = { fg = p.magenta },
    NonText = { fg = p.muted },
    Normal = { fg = p.text, bg = styles.background },
    NormalFloat = { fg = p.text, bg = styles.float_background },
    NormalNC = { fg = p.text, bg = styles.nc_background },
    NvimInternalError = { fg = p.white, bg = p.red },
    Pmenu = { fg = p.subtle, bg = styles.float_background },
    PmenuSbar = { bg = p.hl_low },
    PmenuSel = { fg = p.text, bg = p.overlay },
    PmenuThumb = { bg = p.hl_med },
    Question = { fg = p.yellow },
    -- QuickFixLine = {},
    -- RedrawDebugNormal = {}
    RedrawDebugClear = { fg = p.white, bg = p.yellow },
    RedrawDebugComposed = { fg = p.white, bg = p.green },
    RedrawDebugRecompose = { fg = p.white, bg = p.red },
    Search = { bg = p.hl_med },
    SpecialKey = { fg = p.blue },
    SpellBad = { sp = p.red, style = 'undercurl' },
    SpellCap = { sp = p.subtle, style = 'undercurl' },
    SpellLocal = { sp = p.subtle, style = 'undercurl' },
    SpellRare = { sp = p.subtle, style = 'undercurl' },
    SignColumn = { fg = p.text, bg = styles.background },
    StatusLine = { fg = p.subtle, bg = styles.float_background },
    StatusLineNC = { fg = p.muted, bg = styles.background },
    StatusLineTerm = { link = 'StatusLine' },
    StatusLineTermNC = { link = 'StatusLineNC' },
    TabLine = { fg = p.subtle, bg = styles.float_background },
    TabLineFill = { bg = styles.float_background },
    TabLineSel = { fg = p.text, bg = p.overlay },
    Title = { fg = p.text },
    VertSplit = { fg = colorMaps.border, bg = styles.vert_split },
    Visual = { bg = p.hl_med },
    -- VisualNOS = {},
    WarningMsg = { fg = p.yellow },
    -- Whitespace = {},
    -- WildMenu = {},
  }
end

return M
