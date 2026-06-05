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

##### STATUS BAR #####

set -g status-style \
    "bg=default,fg=#{@thm_fg}"

##### WINDOWS #####

set -g window-status-style \
    "bg=default,fg=#{@thm_fg}"

set -g window-status-current-style \
    "bg=default,fg=#{@thm_primary},bold"

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