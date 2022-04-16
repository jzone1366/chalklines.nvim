local template = require 'chalklines.lib.template'

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local alacrittyColors = {}
  for k, v in pairs(colors) do
    if type(v) == 'string' then
      -- Alacirty does not use the format `#` for hex colors it uses `0x`
      alacrittyColors[k] = v:gsub('^#', '0x')
    else
      alacrittyColors[k] = v
    end
  end

  local alacritty = template.parse_template_str(
    [[
# Chalklines Alacritty Colors
# Style: ${meta.name}
# Upstream: ${meta.url}
colors:
  # Default colors
  primary:
    background: '${base}'
    foreground: '${text}'
  # Normal colors
  normal:
    black:   '${base}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${magenta}'
    cyan:    '${cyan}'
    white:   '${text}'
  # Bright colors
  bright:
    black:   '${base}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${magenta}'
    cyan:    '${cyan}'
    white:   '${text}'
  indexed_colors:
    { index: 16, color: '${orange}' }
    { index: 17, color: '${pink}' }
  ]],
    alacrittyColors
  )

  return alacritty
end

return M
