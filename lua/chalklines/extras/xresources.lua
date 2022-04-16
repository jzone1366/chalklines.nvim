local template = require 'chalklines.lib.template'

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local xr = template.parse_template_str(
    [[
! Twilight colors for Xresources
! Style: ${meta.name}
! Upstream: ${meta.url}
*background: ${base}
*foreground: ${text}
*color0:  ${base}
*color1:  ${red}
*color2:  ${green}
*color3:  ${yellow}
*color4:  ${blue}
*color5:  ${magenta}
*color6:  ${cyan}
*color7:  ${text}
*color8:  ${base}
*color9:  ${red}
*color10: ${green}
*color11: ${yellow}
*color12: ${blue}
*color13: ${magenta}
*color14: ${cyan}
*color15: ${white}

]],
    colors
  )
  return xr
end

return M
