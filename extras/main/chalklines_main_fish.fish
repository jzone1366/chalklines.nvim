# Chalklines Color Palette
# Style: chalklines_main
# Upstream: https://github.com/jzone1366/chalklines.nvim/raw/main/extra/main/chalklines_main_fish.fish
set -l foreground C1C7D6
set -l selection 333333
set -l comment 727A8C
set -l red FF355B
set -l orange F34B00
set -l yellow FFC251
set -l green B7E876
set -l purple BA76E7
set -l cyan 6CBFB5
set -l pink DD56A1
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
  