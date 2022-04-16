# NOTE: you can use vars with $<var> and ${<var>} as long as the str is double quoted: ""
# WARNING: hex colors can't contain capital letters

# Chalklines Tmux Colors
# Style: chalklines_main
# Upstream: https://github.com/jzone1366/chalklines.nvim/raw/main/extra/main/chalklines_main_tmux.tmux
    thm_bg="#242424"
    thm_bg_gutter="#242424"
    thm_fg="#c1c7d6"
    thm_cyan="#6cbfb5"
    thm_gray="#727a8c"
    thm_magenta="#ba76e7"
    thm_red="#ff355b"
    thm_green="#b7e876"
    thm_yellow="#ffc251"
    thm_blue="#76d5ff"
    thm_orange="#f34b00"
    thm_bg_highlight="#303030"
    thm_hl_med="#333333

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
