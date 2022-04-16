-- Chalklines Wezterm Colors
-- Style: chalklines_main
-- Upstream: https://github.com/jzone1366/chalklines.nvim/raw/main/extra/main/chalklines_main_wezterm.lua
return {
  force_reverse_video_cursor = true,
  colors = {
    foreground = "#C1C7D6",
    background = "#181818",

    cursor_bg = "#F34B00",
    cursor_border = "#F34B00",
    cursor_fg = "#181818",

    selection_bg = "#333333",
    selection_fg = "#181818",

    ansi = { "#181818", "#FF355B", "#B7E876", "#FFC251", "#76D5FF", "#BA76E7", "#6CBFB5", "#C1C7D6" },
    brights = {"#181818", "#FF355B", "#B7E876", "#FFC251", "#76D5FF", "#BA76E7", "#6CBFB5", "#C1C7D6" },

		indexed = {[16] = "#F34B00", [17] = "#525A69"},

		scrollbar_thumb = "#333333",
		split = "#242424",

		tab_bar = {
		  background = "#181818",
		  active_tab = {
        bg_color = "#242424",
        fg_color = "#525A69"
		  },
		  inactive_tab = {
        bg_color = "#181818",
        fg_color = "#C1C7D6"
		  },
		  inactive_tab_hover = {
        bg_color = "#242424",
        fg_color = "#C1C7D6"
		  },
		  new_tab = {
        bg_color = "#303030",
        fg_color = "#727A8C"
		  },
		  new_tab_hover = {
        bg_color = "#242424",
        fg_color = "#C1C7D6",
        italic = true
		  },
		},

		visual_bell = "#727A8C",

		-- nightbuild only
		compose_cursor = "#F34B00",
  },
}
    