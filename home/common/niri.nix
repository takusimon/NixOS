{config,pkgs,...}:{
 home.file.".config/niri/config.kdl".text = ''
  include "colors.kdl"
  prefer-no-csd

layer-rule {
    match namespace="^quickshell$"
    place-within-backdrop true
}
environment {
  XDG_CURRENT_DESKTOP "niri"
  QT_QPA_PLATFORM "wayland"
  ELECTRON_OZONE_PLATFORM_HINT "auto"
  QT_QPA_PLATFORMTHEME "gtk3"
  QT_QPA_PLATFORMTHEME_QT6 "gtk3"
}
// Open DMS windows as floating by default
window-rule {
    match app-id=r"org.quickshell$"
    open-floating true
}

input {
    keyboard

    touchpad {
        tap
    }
    mouse
}
blur {
     passes 4
     offset 3.5
     noise 0.02
     saturation 1.15
}

layout {
    gaps 10

    background-color "transparent"
}

indow-rule {
        opacity 0.85

         draw-border-with-background false

        focus-ring {
                off
        }

        border {
                on
                width 1
                active-color "primary"
                inactive-color "background"
        }

        tab-indicator {
                active-color "tertiary"


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
                blur true
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
'';
}