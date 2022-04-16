local template = require 'chalklines.lib.template'

local M = {}

--- @param colors ColorScheme
-- NOTE: you can use vars with $<var> and ${<var>} as long as the str is double quoted: ""
-- WARNING: hex colors can't contain capital letters
function M.generate(colors)
  local tmuxColors = {}
  for k, v in pairs(colors) do
    if type(v) == 'string' and string.match(v, '#') then
      tmuxColors[k] = v:lower()
    else
      tmuxColors[k] = v
    end
  end

  local tmux = template.parse_template_str(
    [[
# NOTE: you can use vars with $<var> and ${<var>} as long as the str is double quoted: ""
# WARNING: hex colors can't contain capital letters

# Chalklines Tmux Colors
# Style: ${meta.name}
# Upstream: ${meta.url}
    thm_bg="${surface}"
    thm_bg_gutter="${surface}"
    thm_fg="${text}"
    thm_cyan="${cyan}"
    thm_gray="${subtle}"
    thm_magenta="${magenta}"
    thm_red="${red}"
    thm_green="${green}"
    thm_yellow="${yellow}"
    thm_blue="${blue}"
    thm_orange="${orange}"
    thm_bg_highlight="${overlay}"
    thm_hl_med="${hl_med}

# ----------------------------=== Theme ===--------------------------

# status
    set -g status-position top
    set -g status "on"
    set -g status-bg "$thm_bg"
    set -g status-justify "left"
    set -g status-left-length "100"
    set -g status-right-length "100"

# messages
    set -g message-style fg="$thm_fg",bg="$thm_bg_gutter",align="centre"
    set -g message-command-style fg="$thm_fg",bg="$thm_bg_gutter",align="centre"

# panes
    set -g pane-border-style fg="$thm_bg_gutter"
    set -g pane-active-border-style fg="$thm_blue"

# windows
    setw -g window-status-activity-style fg="$thm_fg",bg="$thm_bg",none
    setw -g window-status-separator ""
    setw -g window-status-style fg="$thm_fg",bg="$thm_bg",none

# --------=== Statusline

    set -g status-left ""
    set -g status-right "#[fg=$thm_cyan,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_cyan,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_bg_gutter] #W #[fg=$thm_green,bg=$thm_bg_gutter]#[fg=$thm_bg,bg=$thm_green] #[fg=$thm_fg,bg=$thm_bg_gutter] #S #[fg=$thm_orange,bg=$thm_bg_gutter]#[fg=$thm_bg,bg=$thm_orange] #[fg=$thm_fg,bg=$thm_bg_gutter] %d.%m.%Y #{?client_prefix,#[fg=$thm_red],#[fg=$thm_yellow]}#[bg=$thm_bg_gutter]#{?client_prefix,#[bg=$thm_red],#[bg=$thm_yellow]}#[fg=$thm_bg] #[fg=$thm_fg,bg=$thm_bg_gutter] %H:%M:%S "

# current_dir
    setw -g window-status-format "#[fg=$thm_bg,bg=$thm_hl_med] #I #[fg=$thm_fg,bg=$thm_bg] #{b:pane_current_path} "
    setw -g window-status-current-format "#[fg=$thm_bg,bg=$thm_blue] #I #[fg=$thm_fg,bg=$thm_bg_gutter] #{b:pane_current_path} "

# --------=== Modes
    setw -g clock-mode-colour "$thm_blue"
    setw -g mode-style "fg=$thm_cyan bg=$thm_bg_highlight bold"
]],
    tmuxColors
  )
  return tmux
end

return M
