{config,pkgs,...}:{
 home.file.".config/niri/config.kdl".text = ''
spawn-at-startup "noctalia-shell"
prefer-no-csd
  cursor {
   xcursor-theme "Bibata-Modern-Ice"
   xcursor-size 24
  }
  layer-rule {
    match namespace="^quickshell$"
    place-within-backdrop true
  }
  environment {
    XDG_CURRENT_DESKTOP "niri"
    GDK_BACKEND "wayland,x11"
    SDL_VIDEODRIVER "wayland"
    CLUTTER_BACKEND "wayland"
    XDG_SESSION_TYPE "wayland"
    XDG_SESSION_DESKTOP "niri"
    QT_QPA_PLATFORM "wayland"
    ELECTRON_OZONE_PLATFORM_HINT "auto"
    QT_QPA_PLATFORMTHEME "qt6ct"
    QT_QPA_PLATFORMTHEME_QT6 "qt6ct"
  }

input {
    keyboard

    touchpad {
        tap
    }
    mouse
}

hotkey-overlay {
 skip-at-startup
 hide-not-bound
}

layout {
    gaps 10

    background-color "transparent"
}

  window-rule {
        opacity 0.9

         draw-border-with-background false

        focus-ring {
                off
        }

        border {
                on
                width 1
        }

        tab-indicator {


        }
        shadow {
               on
               softness 10
               spread 5
               draw-behind-window false
        }
        geometry-corner-radius 5
        clip-to-geometry true
        tiled-state true

        background-effect {
                blur false
                saturation 0
                xray true
        }

	 popups {
                opacity 0.9
                geometry-corner-radius 15

                background-effect {
                        blur true
                        noise 0.05
                }
        }

     }
     window-rule {
	match app-id="google-chrome" title="YouTube"

	opacity 1.0

}

window-rule {
	match app-id="anki"

	default-column-display "tabbed"
}
binds {
     // === System & Overview ===
    Mod+Tab repeat=false { toggle-overview; }
    Mod+Shift+M { show-hotkey-overlay; }
	Mod+Return repeat=false hotkey-overlay-title="Open Terminal" { spawn "kitty"; }
     Print {screenshot; }

     // Core Noctalia binds
    Mod+Space { spawn-sh "noctalia-shell ipc call launcher toggle"; }
    Mod+S { spawn-sh "noctalia-shell ipc call controlCenter toggle"; }
    Mod+Shift+Comma { spawn-sh "noctalia-shell ipc call settings toggle"; }
    Mod+Escape {spawn "noctalia-shell" "ipc" "call" "lockScreen" "lock";}
    Mod+M {spawn "noctalia-shell" "ipc" "call" "systemMonitor" "toggle";}
    Mod+V {spawn "noctalia-shell" "ipc" "call" "launcher" "clipboard";}
    Mod+N {spawn "noctalia-shell" "ipc" "call" "notifications" "toggleHistory";}
    Mod+Y {spawn "noctalia-shell" "ipc" "call" "wallpaper" "toggle";}
    // Audio & Brightness
    XF86AudioRaiseVolume { spawn "noctalia-shell" "ipc" "call" "volume" "increase"; }
    XF86AudioLowerVolume { spawn "noctalia-shell" "ipc" "call" "volume" "decrease"; }
    XF86AudioMute { spawn "noctalia-shell" "ipc" "call" "volume" "muteOutput"; }
    XF86MonBrightnessUp { spawn "noctalia-shell" "ipc" "call" "brightness" "increase"; }
    XF86MonBrightnessDown { spawn "noctalia-shell" "ipc" "call" "brightness" "decrease"; }

     // === Window Management ===
    Mod+Q repeat=false { close-window; }
    Mod+F repeat=false { maximize-column; }
    Mod+Shift+F { fullscreen-window; }
    Mod+Shift+T { toggle-window-floating; }
    Mod+Shift+V { switch-focus-between-floating-and-tiling; }
    Mod+W { toggle-column-tabbed-display; }

     // === Focus Navigation ===
    Mod+Left  { focus-column-or-monitor-left; }
    Mod+Down  { focus-window-or-workspace-down; }
    Mod+Up    { focus-window-or-workspace-up; }
    Mod+Right { focus-column-or-monitor-right; }

    Mod+H     { focus-column-left; }
    Mod+J     { focus-window-down; }
    Mod+K     { focus-window-up; }
    Mod+L     { focus-column-right; }

      // === Window Movement ===
    Mod+Shift+Left  { move-column-left-or-to-monitor-left; }
    Mod+Shift+Down  { move-window-down-or-to-workspace-down; }
    Mod+Shift+Up    { move-window-up-or-to-workspace-up; }
    Mod+Shift+Right { move-column-right-or-to-monitor-right; }

    Mod+Shift+H     { move-column-left; }
    Mod+Shift+J     { move-window-down; }
    Mod+Shift+K     { move-window-up; }
    Mod+Shift+L     { move-column-right; }

    // === Column Navigation ===
    Mod+Home { focus-column-first; }
    Mod+End  { focus-column-last; }
    Mod+Ctrl+Home { move-column-to-first; }
    Mod+Ctrl+End  { move-column-to-last; }

    // === Monitor Navigation ===
    Mod+Ctrl+Left  { focus-monitor-left; }
    Mod+Ctrl+Right { focus-monitor-right; }
    Mod+Ctrl+H     { focus-monitor-left; }
    Mod+Ctrl+J     { focus-monitor-down; }
    Mod+Ctrl+K     { focus-monitor-up; }
    Mod+Ctrl+L     { focus-monitor-right; }

    // === Move to Monitor ===
    Mod+Shift+Ctrl+Left  { move-column-to-monitor-left; }
    Mod+Shift+Ctrl+Down  { move-column-to-workspace-down; }
    Mod+Shift+Ctrl+Up    { move-column-to-workspace-up; }
    Mod+Shift+Ctrl+Right { move-column-to-monitor-right; }

    Mod+Shift+Ctrl+H     { move-column-to-monitor-left; }
    Mod+Shift+Ctrl+J     { move-column-to-monitor-down; }
    Mod+Shift+Ctrl+K     { move-column-to-monitor-up; }
    Mod+Shift+Ctrl+L     { move-column-to-monitor-right; }

    // === Workspace Navigation ===
    Mod+Page_Down      { focus-workspace-down; }
    Mod+Page_Up        { focus-workspace-up; }
    Mod+U              { focus-workspace-down; }
    Mod+I              { focus-workspace-up; }
    Mod+Ctrl+Down 	 { move-column-to-workspace-down; }
    Mod+Ctrl+Up   	{ move-column-to-workspace-up; }
    Mod+Ctrl+U         { move-column-to-workspace-down; }
    Mod+Ctrl+I         { move-column-to-workspace-up; }

    // === Move Workspaces ===
    Mod+Shift+Page_Down { move-workspace-down; }
    Mod+Shift+Page_Up   { move-workspace-up; }
    Mod+Shift+Y 			  { move-workspace-to-monitor-previous; }
    Mod+Shift+U         { move-workspace-down; }
    Mod+Shift+I         { move-workspace-up; }
    Mod+Shift+O 			  { move-workspace-to-monitor-next; }

    // === Mouse Wheel Navigation ===
    Mod+WheelScrollDown cooldown-ms=150 { focus-workspace-down; }
    Mod+WheelScrollUp cooldown-ms=150 { focus-workspace-up; }
    Mod+Shift+WheelScrollDown cooldown-ms=150 { move-column-to-workspace-down; }
    Mod+Shift+WheelScrollUp cooldown-ms=150 { move-column-to-workspace-up; }

    Mod+Ctrl+Shift+WheelScrollDown { move-column-right; }
    Mod+Ctrl+Shift+WheelScrollUp   { move-column-left; }

    // === Numbered Workspaces ===
    Mod+1 { focus-workspace 1; }
    Mod+2 { focus-workspace 2; }
    Mod+3 { focus-workspace 3; }
    Mod+4 { focus-workspace 4; }
    Mod+5 { focus-workspace 5; }
    Mod+6 { focus-workspace 6; }
    Mod+7 { focus-workspace 7; }
    Mod+8 { focus-workspace 8; }
    Mod+9 { focus-workspace 9; }

    // === Move to Numbered Workspaces ===
    Mod+Shift+1 { move-column-to-workspace 1; }
    Mod+Shift+2 { move-column-to-workspace 2; }
    Mod+Shift+3 { move-column-to-workspace 3; }
    Mod+Shift+4 { move-column-to-workspace 4; }
    Mod+Shift+5 { move-column-to-workspace 5; }
    Mod+Shift+6 { move-column-to-workspace 6; }
    Mod+Shift+7 { move-column-to-workspace 7; }
    Mod+Shift+8 { move-column-to-workspace 8; }
    Mod+Shift+9 { move-column-to-workspace 9; }

    // === Column Management ===
    Mod+Comma  { consume-or-expel-window-left; }
    Mod+Period { consume-or-expel-window-right; }

    // === Sizing & Layout ===
    Mod+R { switch-preset-column-width; }
    Mod+Shift+R { switch-preset-window-height; }
    Mod+Ctrl+R { reset-window-height; }
    Mod+Ctrl+F { expand-column-to-available-width; }
    Mod+C { center-column; }
    Mod+Ctrl+C { center-visible-columns; }

    // === Manual Sizing ===
    Mod+Minus { set-column-width "-1%"; }
    Mod+Equal { set-column-width "+1%"; }
    Mod+Shift+Minus { set-window-height "-1%"; }
    Mod+Shift+Equal { set-window-height "+1%"; }
}
include "./noctalia.kdl"
'';
}