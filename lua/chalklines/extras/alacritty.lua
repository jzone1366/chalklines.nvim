local template = require 'chalklines.lib.template'

local M = {}

function M.generate(theme)
  local colors = theme.generated
  local alacrittyColors = {}

  for k, v in pairs(colors) do
    if type(v) == 'string' then
      -- Alacrrity does not use the format `#` for hex colors it uses `0x`
      alacrittyColors[k] = v:gsub('^#', '0x')
    else
      alacrittyColors[k] = v
    end
  end

  alacrittyColors.meta = theme.meta

  local content = [[
# Chalklines Alacritty Colors
# Style: ${meta.name}
# Upstream: ${meta.url}
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${fg}'
  # Normal colors
  normal:
    black:   '${black}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${purple}'
    cyan:    '${cyan}'
    white:   '${white}'
  # Bright colors
  bright:
    black:   '${black}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${purple}'
    cyan:    '${cyan}'
    white:   '${white}'
  indexed_colors:
    { index: 16, color: '${orange}' }
    { index: 17, color: '${pink}' }
  ]]

  local alacritty = template.parse_template_str(content, alacrittyColors)

  return alacritty
end

return M
