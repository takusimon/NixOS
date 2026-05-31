{config,pkgs,...}:{
programs.tmux = {
  enable = true;
  prefix = "c-a";
  keyMode = "vi";
  terminal = "tmux-256color";
  baseIndex = 1;
  extraConfig = ''

 # =========================
# TERMINAL
# =========================
set -ga terminal-overrides ",*:RGB"
set -g set-clipboard on
set -g default-command "bash"

# =========================
# SPLITS
# =========================
unbind %
unbind '"'

bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"

# =========================
# PANE NAVIGATION
# =========================
bind -n M-h select-pane -L
bind -n M-j select-pane -D
bind -n M-k select-pane -U
bind -n M-l select-pane -R

# =========================
# RELOAD CONFIG
# =========================
unbind r
bind r source-file ~/.config/tmux/tmux.conf \; display-message "tmux reloaded"

# =========================
# WINDOW INDEXING
# =========================
set -g pane-base-index 1
set -g renumber-windows on

bind -n M-1 select-window -t 1
bind -n M-2 select-window -t 2
bind -n M-3 select-window -t 3
bind -n M-4 select-window -t 4
bind -n M-5 select-window -t 5
bind -n M-6 select-window -t 6

# =========================
# COPY MODE (VIM)
# =========================

bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

unbind -T copy-mode-vi MouseDragEnd1Pane


# Matugen colors
source-file ~/.config/tmux/colors.conf

##### WINDOW BACKGROUNDS #####

set -g window-style \
    "bg=default,fg=#{@thm_fg}"

set -g window-active-style \
    "bg=default,fg=#{@thm_fg}"

set-option -g status-justify left

set-option -g status-style \
"bg=#{@thm_surface},fg=#d8dee9"

set-option -g status-left \
'#[bg=#{@thm_primary}] \
#[bg=#3b4252] \
#[bg=#2e3440] \
#[bg=#1f2430]#[fg=#eceff4,bold] #S \
#[bg=#2e3440] '

set-option -g status-left-length 16

set-option -g status-right \
'#[bg=#2e3440] \
#[bg=#1f2430]#[fg=#eceff4,bold] %a %R \
#[bg=#2e3440]#[fg=#{@thm_primary}] \
#[bg=#3b4252] \
#[bg=#{@thm_primary}] #[]'

set-option -g status-interval 60

set-option -g pane-active-border-style \
"fg=#{@thm_primary}"

set-option -g pane-border-style \
"fg=#4c566a"

set-window-option -g window-status-format \
'#[bg=#3b4252]#[fg=#d8dee9,bold] #I \
#[bg=#2e3440]#[fg=#e5e9f0] \
#[bg=#1f2430]#[fg=#eceff4] #W\
#[bg=#2e3440]#[fg=#{@thm_primary}]#F\
#[bg=#3b4252] '

set-window-option -g window-status-current-format \
'#[bg=#{@thm_primary_container}]#[fg=#{@thm_on_primary_container},bold] #I \
#[bg=#{@thm_primary}]#[fg=#{@thm_on_primary},bold] \
#[bg=#1f2430]#[fg=#ffffff,bold] #W\
#[bg=#{@thm_primary}]#[fg=#{@thm_on_primary}]#F\
#[bg=#{@thm_primary_container}] '



##### PANES #####

set -g pane-border-style \
    "fg=#{@thm_surface_container}"

set -g pane-active-border-style \
    "fg=#{@thm_primary}"

##### MESSAGES #####

set -g message-style \
    "bg=default,fg=#{@thm_primary}"

set -g message-command-style \
    "bg=default,fg=#{@thm_primary}"

##### MODES #####

set -g mode-style \
    "bg=default,fg=#{@thm_primary}"




   '';
 };
}