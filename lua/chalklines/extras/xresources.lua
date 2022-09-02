local template = require 'chalklines.lib.template'

local M = {}

function M.generate(theme)
  local colors = theme.generated

  local xColors = {}
  for k, v in pairs(colors) do
    xColors[k] = v:gsub('^#', '0x')
  end

  xColors.meta = theme.meta

  local content = [[
! Twilight colors for Xresources
! Style: ${meta.name}
! Upstream: ${meta.url}
*background: ${bg}
*foreground: ${fg}
*color0:  ${black}
*color1:  ${red}
*color2:  ${green}
*color3:  ${yellow}
*color4:  ${blue}
*color5:  ${purple}
*color6:  ${cyan}
*color7:  ${white}
*color8:  ${bg}
*color9:  ${red}
*color10: ${green}
*color11: ${yellow}
*color12: ${blue}
*color13: ${purple}
*color14: ${cyan}
*color15: ${white}
]]

  local xr = template.parse_template_str(content, xColors)

  return xr
end

return M
