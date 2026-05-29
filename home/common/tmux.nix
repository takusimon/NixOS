{config,pkgs,...}:{
programs.tmux = {
  enable = true;
  prefix = "c-a";
  keyMode = "vi";
  terminal = "tmux-256color";
  baseIndex = 1;
  extraConfig = ''
   #Terminal
   
   set -ga terminal-overrides ",*:RGB"
   set -g set-clipboard on
   set -g default-command "bash"

   #split screen
   unbind %
   unbind '"'

   bind | split-window -h -c "#{pane_current_path}"
   bind - split-window -v -c "#{pane_current_path}"

   #Pane Navigation
   bind -n M-h select-pane -L
   bind -n M-j select-pane -D
   bind -n M-k select-pane -U
   bind -n M-l select-pane -R

   #Window Indexing
   set -g pane-base-index 1
   set -g renumber-windows on

   bind -n M-1 select-window -t 1
   bind -n M-2 select-window -t 2
   bind -n M-3 select-window -t 3
   bind -n M-4 select-window -t 4
   bind -n M-5 select-window -t 5
   bind -n M-6 select-window -t 6

   # Copy Mode
   bind-key -T copy-mode-vi v send-keys -X begin-selection
   bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
   bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

   unbind -T copy-mode-vi MouseDragEnd1Pane
   # ----- STATUS BAR -----

   set -g status-position top
   set -g status-justify left
   set -g status-style "bg={{colors.surface_container_lowest.default.hex}}"
   set -g status-interval 1

   set -g status-left-length 100
   set -g status-right-length 100

   # Left side
   set -g status-left "#[fg={{colors.surface_container_lowest.default.hex}},bg={{colors.primary.default.hex}},bold] #S #[fg={{colors.primary.default.hex}},bg={{colors.surface_container.default.hex}}]"

  # Window tabs
  set -g window-status-separator ""

  set -g window-status-format " #[fg={{colors.on_surface_variant.default.hex}}]#I:#W "

  set -g window-status-current-format "#[fg={{colors.surface_container_lowest.default.hex}},bg={{colors.secondary.default.hex}},bold] #I:#W "

  # Right side
  set -g status-right "#[fg={{colors.surface_container.default.hex}},bg={{colors.surface_container_lowest.default.hex}}]#[fg={{colors.on_surface.default.hex}},bg={{colors.surface_container.default.hex}}] 󰥔 %H:%M #[fg={{colors.primary.default.hex}},bg={{colors.surface_container.default.hex}}]│#[fg={{colors.primary.default.hex}},bg={{colors.surface_container.default.hex}},bold] #h "

 # Pane borders
 set -g pane-border-style "fg={{colors.outline.default.hex}}"
 set -g pane-active-border-style "fg={{colors.primary.default.hex}}"

 # Message styling
 set -g message-style "fg={{colors.on_primary.default.hex}},bg={{colors.primary.default.hex}},bold"
   '';
 };
}