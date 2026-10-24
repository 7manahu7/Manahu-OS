# Ryoku palette for fish and fzf. Rendered by the theme daemon; do not edit.
#
# Dropped straight into conf.d, which fish sources on its own, so nothing in the
# shipped config has to include it. Your ~/.config/fish/user.fish loads last and
# still wins.

# Syntax highlighting.
set -g fish_color_normal e2e2e9
set -g fish_color_command adc6ff
set -g fish_color_keyword debcdf
set -g fish_color_quote bfc6dc
set -g fish_color_redirection c4c6d0
set -g fish_color_end debcdf
set -g fish_color_error ffb4ab
set -g fish_color_param e2e2e9
set -g fish_color_comment 8e9099
set -g fish_color_selection --background=2b4678
set -g fish_color_operator debcdf
set -g fish_color_escape bfc6dc
set -g fish_color_autosuggestion 8e9099
set -g fish_color_cancel ffb4ab
set -g fish_color_search_match --background=2b4678
set -g fish_color_valid_path --underline

# Completion pager.
set -g fish_pager_color_progress c4c6d0
set -g fish_pager_color_prefix adc6ff
set -g fish_pager_color_completion e2e2e9
set -g fish_pager_color_description 8e9099
set -g fish_pager_color_selected_background --background=2b4678

# fzf takes the same palette, so Ctrl-R and Ctrl-T match the terminal they open
# in. Appended to whatever options are already set rather than replacing them.
set -gx FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS \
--color=fg:#e2e2e9,bg:-1,hl:#adc6ff \
--color=fg+:#e2e2e9,bg+:#2b4678,hl+:#adc6ff \
--color=info:#bfc6dc,prompt:#adc6ff,pointer:#debcdf \
--color=marker:#debcdf,spinner:#bfc6dc,header:#8e9099 \
--color=border:#44474f"
