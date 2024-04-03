## set status bar
set -g status-position bottom
set -g automatic-rename on
set -g status-style bg='#13161A'
setw -g window-status-current-style bg="#1f2329"
setw -g window-status-current-style fg="#E6EAFF"

## highlight activity in status bar
setw -g window-status-activity-style fg="#E6EAFF"
setw -g window-status-activity-style bg="#1f2329"

## pane border and colors
set -g pane-active-border-style fg="#E6EAFF"
set -g pane-active-border-style bg=default
set -g pane-border-style bg=default
set -g pane-border-style fg="#A9AEC2"
set-window-option -g pane-border-status off

# CLock
set -g clock-mode-colour "#8ebd6b"
set -g clock-mode-style 24

# message bar or "prompt"
set -g message-style bg="#1f2329"
set -g message-style fg="#E6EAFF"
set -g message-style 'underscore'

set -g message-command-style bg="#1f2329"
set -g message-command-style fg="#E6EAFF"
set -g message-command-style 'underscore'

# Selection
set -g mode-style bg="#1f2329"
set -g mode-style fg="#54B2FF"

# LEft Status line 
set -g status-left-length 30 # Stops name cutoff
set -g status-left-style fg='#8ebd6b'
set -g status-left-style bold
set -g status-left '#[fg=#8ebd6b][ #{session_name} ] '

# Right Status line
set -g status-right-length 101
set -g status-right-style fg='#E6EAFF'
set -g status-right-style bold
set -g status-right '#[fg=#8ebd6b,bg=#13161A] %H:%M  #[fg=#fFB46E] %y.%m.%d '

# Windows Status line
set-window-option -g window-status-style bg='#13161A'
set-window-option -g window-status-style fg='#E6EAFF'
set-window-option -g window-status-style none
set-window-option -g window-status-format '#[fg=#8ebd6b,bg=#1f2329] #I #[fg=#4ED,bg=#1f2329] #W #[default]'

set-window-option -g window-status-current-style bold
set-window-option -g window-status-current-format '#[fg=#54B2FF,bg=#3A414D] #I #[fg=#E6EAFF,bg=#3A414D] #W #[default]'
