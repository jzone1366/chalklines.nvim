local util = require 'chalklines.utils'

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local wezterm = util.template(
    [[
-- Chalklines Wezterm Colors
-- Style: ${meta.name}
-- Upstream: ${meta.url}
return {
  force_reverse_video_cursor = true,
  colors = {
    foreground = "${text}",
    background = "${base}",

    cursor_bg = "${orange}",
    cursor_border = "${orange}",
    cursor_fg = "${base}",

    selection_bg = "${text}",
    selection_fg = "${base}",

    ansi = { "${base}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${text}" },
    brights = {"${base}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${text}" },

		indexed = {[16] = "${orange}", [17] = "${muted}"},

		scrollbar_thumb = "${hl_med}",
		split = "${surface}",

		tab_bar = {
		  background = "${base}",
		  active_tab = {
        bg_color = "${surface}",
        fg_color = "${muted}"
		  },
		  inactive_tab = {
        bg_color = "${base}",
        fg_color = "${text}"
		  },
		  inactive_tab_hover = {
        bg_color = "${surface}",
        fg_color = "${text}"
		  },
		  new_tab = {
        bg_color = "${overlay}",
        fg_color = "${subtle}"
		  },
		  new_tab_hover = {
        bg_color = "${surface}",
        fg_color = "${text}",
        italic = true
		  },
		},

		visual_bell = "${subtle}",

		-- nightbuild only
		compose_cursor = "${orange}",
  },
}
    ]],
    colors
  )
  return wezterm
end

return M
