-- Chalklines Wezterm Colors
-- Style: chalklines_bright
-- Upstream: https://github.com/jzone1366/chalklines.nvim/raw/main/extra/bright/chalklines_bright_wezterm.lua
return {
  force_reverse_video_cursor = true,
  colors = {
    foreground = "#525A69",
    background = "#E7E7E7",

    cursor_bg = "#F34B00",
    cursor_border = "#F34B00",
    cursor_fg = "#E7E7E7",

    selection_bg = "#CBCBCB",
    selection_fg = "#E7E7E7",

    ansi = { "#E7E7E7", "#FF355B", "#70AE1E", "#D68B00", "#00A4EB", "#BA76E7", "#4EB1A6", "#525A69" },
    brights = {"#E7E7E7", "#FF355B", "#70AE1E", "#D68B00", "#00A4EB", "#BA76E7", "#4EB1A6", "#525A69" },

		indexed = {[16] = "#F34B00", [17] = "#C1C7D6"},

		scrollbar_thumb = "#CBCBCB",
		split = "#DBDBDB",

		tab_bar = {
		  background = "#E7E7E7",
		  active_tab = {
        bg_color = "#DBDBDB",
        fg_color = "#C1C7D6"
		  },
		  inactive_tab = {
        bg_color = "#E7E7E7",
        fg_color = "#525A69"
		  },
		  inactive_tab_hover = {
        bg_color = "#DBDBDB",
        fg_color = "#525A69"
		  },
		  new_tab = {
        bg_color = "#CFCFCF",
        fg_color = "#727A8C"
		  },
		  new_tab_hover = {
        bg_color = "#DBDBDB",
        fg_color = "#525A69",
        italic = true
		  },
		},

		visual_bell = "#727A8C",

		-- nightbuild only
		compose_cursor = "#F34B00",
  },
}
    