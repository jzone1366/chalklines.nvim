local template = require 'chalklines.lib.template'

local M = {}

function M.generate(theme)
  local kittyColors = theme.generated
  kittyColors.meta = theme.meta

  local content = [[
# Chalklines colors for Kitty
## name: ${meta.name}
## upstream: ${meta.url}

background ${bg}
foreground ${fg}
selection_background ${selection}
selection_foreground ${fg}
url_color ${green}
cursor ${orange}

# Tabs
active_tab_background ${bg}
active_tab_foreground ${blue}
inactive_tab_background ${bg}
inactive_tab_foreground ${gray}

# normal
color0 ${black}
color1 ${red}
color2 ${green}
color3 ${yellow}
color4 ${blue}
color5 ${purple}
color6 ${cyan}
color7 ${white}

# bright
color8 ${bg}
color9 ${red}
color10 ${green}
color11 ${yellow}
color12 ${blue}
color13 ${purple}
color14 ${cyan}
color15 ${white}

# extended colors
color16 ${orange}
color17 ${pink}
  ]]

  local kitty = template.parse_template_str(content, kittyColors)

  return kitty
end

return M
