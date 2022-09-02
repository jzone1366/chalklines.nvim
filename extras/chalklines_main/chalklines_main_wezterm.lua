-- Chalklines Wezterm Colors
-- Style: chalklines_main
-- Upstream: https://github.com/jzone1366/chalklines.nvim/raw/main/extra/chalklines_main/chalklines_main_wezterm.lua
return {
  force_reverse_video_cursor = true,
  colors = {
    foreground = "${fg}",
    background = "${bg}",

    cursor_bg = "${orange}",
    cursor_border = "${orange}",
    cursor_fg = "${bg}",

    selection_bg = "${gray}",
    selection_fg = "${bg}",

    ansi = { "${black}", "${red}", "${green}", "${yellow}", "${blue}", "${purple}", "${cyan}", "${white}" },
    brights = {"${black}", "${red}", "${green}", "${yellow}", "${blue}", "${purple}", "${cyan}", "${white}" },

		indexed = {[16] = "${orange}", [17] = "${pink}"},

		scrollbar_thumb = "${gray}",
		split = "${gray}",

		tab_bar = {
		  background = "${bg}",
		  active_tab = {
        bg_color = "${gray}",
        fg_color = "${cyan}"
		  },
		  inactive_tab = {
        bg_color = "${bg}",
        fg_color = "${gray}"
		  },
		  inactive_tab_hover = {
        bg_color = "${bg}",
        fg_color = "${gray}"
		  },
		  new_tab = {
        bg_color = "${bg}",
        fg_color = "${gray}"
		  },
		  new_tab_hover = {
        bg_color = "${bg}",
        fg_color = "${gray}",
        italic = true
		  },
		},

		visual_bell = "${gray}",

		-- nightbuild only
		compose_cursor = "${orange}",
  },
}
    