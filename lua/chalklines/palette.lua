--stylua: ignore
local variants = {
  main = {
    base    = '#181818', -- base
    surface = '#242424', -- surface
    overlay = '#303030', -- overlay

    muted   = '#525A69', -- muted
    subtle  = '#727A8C', -- subtle
    text    = '#C1C7D6', -- text

    blue    = '#76D5FF', -- foam
    cyan    = '#6CBFB5', -- rose
    green   = '#B7E876', -- pine
    magenta = '#BA76E7', -- iris
    red     = '#FF355B', -- love
    yellow  = '#FFC251', -- gold

    hl_low  = '#212121', -- highlight_low
    hl_med  = '#333333', -- highlight_med
    hl_high = '#474747', -- highlight_high

    orange  = '#F34B00',
    white   = '#E7E7E7',

    opacity = 0.1,
    none = 'NONE',
  },

  bright = {
    base    = '#E7E7E7', -- base
    surface = '#DBDBDB', -- surface
    overlay = '#CFCFCF', -- overlay

    muted   = '#C1C7D6', -- muted
    subtle  = '#727A8C', -- subtle
    text    = '#525A69', -- text

    blue    = '#00A4EB', -- foam
    cyan    = '#4EB1A6', -- rose
    green   = '#70AE1E', -- pine
    magenta = '#BA76E7', -- iris
    red     = '#FF355B', -- love
    yellow  = '#D68B00', -- gold

    hl_low  = '#DEDEDE', -- highlight_low
    hl_med  = '#CBCBCB', -- highlight_med
    hl_high = '#B7B7B7', -- highlight_high

    orange  = '#F34B00',
    white   = '#181818',

    opacity = 0.1,
    none = 'NONE',
  }
}

local palette = {}

if vim.o.background == 'light' then
  palette = variants.bright
else
  palette = variants.main
end

return palette
