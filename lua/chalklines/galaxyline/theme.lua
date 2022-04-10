local present, galaxyline_colors = pcall(require, 'galaxyline.themes.colors')
if not present then
  return
end

local p = require 'chalklines.palette'

galaxyline_colors['chalklines'] = {
  bg = p.overlay,
  fg = p.text,
  fg_alt = p.subtle,
  blue = p.blue,
  cyan = p.blue,
  green = p.muted,
  magenta = p.magenta,
  orange = p.cyan,
  red = p.red,
  yellow = p.yellow,
}
