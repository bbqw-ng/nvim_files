set-option -ga terminal-overrides ",xterm-256color:Tc"
set -g default-terminal "tmux-256color"
set -ag terminal-overrides ",xterm-256color:RGB"
set-option -sg escape-time 10

set -g prefix C-a
unbind C-b
bind-key C-a send-prefix

unbind %
bind \\ split-window -h

unbind '"'
bind - split-window -v

unbind r
bind r source-file ~/.tmux.conf

bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5
bind -r h resize-pane -L 5

bind -r m resize-pane -Z

# tpm plugin that is REQUIRED!
set -g @plugin 'tmux-plugins/tpm'

# list of tmux plugins
set -g @plugin 'christoomey/vim-tmux-navigator'

# keeps tmux data saves and keeps tabs
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

#theme
set -g @plugin 'catppuccin/tmux'
set -g @catpuccin_flavour 'frappe' # latte, frappe, macchiato, mocha
set -g @plugin 'xamut/tmux-weather'

#theme configs

#adds weather
set -g @catppuccin_status_modules_right '... weather ...'

set -g @catppuccin_window_left_separator ""
set -g @catppuccin_window_right_separator " "
set -g @catppuccin_window_middle_separator " █"
set -g @catppuccin_window_number_position "right"

set -g @catppuccin_window_default_fill "number"
set -g @catppuccin_window_default_text "#W"

set -g @catppuccin_window_current_fill "number"
set -g @catppuccin_window_current_text "#W"

set -g @catppuccin_status_modules_right "directory user host session"
set -g @catppuccin_status_left_separator  " "
set -g @catppuccin_status_right_separator ""
set -g @catppuccin_status_right_separator_inverse "no"
set -g @catppuccin_status_fill "icon"
set -g @catppuccin_status_connect_separator "no"

set -g @catppuccin_directory_text "#{pane_current_path}"

set -g @resurrect-capture-pane-contents 'on'
set -g @continuum-restore 'on'

#To install new plugins, do Ctrl-a-I

# initializes Tmux plugin manager (keep line at very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'

