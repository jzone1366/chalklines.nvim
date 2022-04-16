local template = require 'chalklines.lib.template'

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local kitty = template.parse_template_str(
    [[
# Chalklines colors for Kitty
## name: ${meta.name}
## upstream: ${meta.url}

background ${base}
foreground ${text}
selection_background ${text}
selection_foreground ${base}
url_color ${green}
cursor ${orange}

# Tabs
active_tab_background ${blue}
active_tab_foreground ${surface}
inactive_tab_background ${base}
inactive_tab_foreground ${subtle}

# normal
color0 ${base}
color1 ${red}
color2 ${green}
color3 ${yellow}
color4 ${blue}
color5 ${magenta}
color6 ${cyan}
color7 ${text}

# bright
color8 ${base}
color9 ${red}
color10 ${green}
color11 ${yellow}
color12 ${blue}
color13 ${magenta}
color14 ${cyan}
color15 ${text}

# extended colors
color16 ${orange}
color17 ${pink}
  ]],
    colors
  )
  return kitty
end

return M
