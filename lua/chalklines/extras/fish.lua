local template = require 'chalklines.lib.template'

local M = {}

function M.generate(theme)
  local colors = theme.generated
  local fishColors = {}

  for k, v in pairs(colors) do
    if type(v) == 'string' then
      -- Fish does not use the format `#` for hex colors it uses `0x`
      fishColors[k] = v:gsub('^#', '')
    else
      fishColors[k] = v
    end
  end

  fishColors.meta = theme.meta

  local content = [[
# Chalklines Color Palette
# Style: ${meta.name}
# Upstream: ${meta.url}
set -l foreground ${fg}
set -l selection ${selection}
set -l comment ${gray}
set -l red ${red}
set -l orange ${orange}
set -l yellow ${yellow}
set -l green ${green}
set -l purple ${purple}
set -l cyan ${cyan}
set -l pink ${pink}
# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment
# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
  ]]

  local fish = template.parse_template_str(content, fishColors)

  return fish
end

return M
