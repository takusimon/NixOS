{config,pkgs,...}:{
programs.kitty = {
  enable = true;
  font = {
    name = "JetBrains Mono Nerd Font Mono";
    size = 12;
  };
  extraConfig = ''
    # BEGIN_KITTY_THEME
    # Matugen
    include current-theme.conf
    # END_KITTY_THEME
    
    cursor_trail 3
    url_style curly
    window_padding_width 25
    hide_window_decorations yes
    confirm_os_window_close 0
    background_opacity 0.8
    
   '';
  };
}
    