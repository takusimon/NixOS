{config,pkgs,...}:{
  qt = {
   enable = true;
   qt5ctSettings = {
    Appearance = {
    style = "Breeze";
     color_scheme_path = "~/.config/qt5ct/colors/noctalia.conf";
     custom_palette = "true";
     icon_theme = "Papirus-Dark";
    };
    Fonts = {
     fixed = "\"OpenDyslexicM Nerd Font Propo Regular, 12\"";
     general = "OpenDyslexicM Nerd Font Propo Regular, 12\"";
    };
   };

  qt6ctSettings = {
   Appearance = {
     style = "Breeze";
     color_scheme_path = "~/.config/qt6ct/colors/noctalia.conf";
     custom_palette = "true";
     icon_theme = "Papirus-Dark";
   };
   Fonts = {
     fixed = "\"OpenDyslexicM Nerd Font Propo Regular, 12\"";
     general = "OpenDyslexicM Nerd Font Propo Regular, 12\"";
    };
 };
};

gtk = {
 enable = true;
 font = {
  name = "OpenDyslexicM Nerd Font Propo Regular";
  size = 12;
 };
 iconTheme.name = "Papirus-Dark";
 cursorTheme = {
  name = "Bibata-Modern-Ice";
  size = 24;
 };
 theme.name = "adw-gtk3-dark";
 colorScheme = "dark";
 
 gtk3.extraCss = "@import 'noctalia.css';";
 gtk4.extraCss = "@import 'noctalia.css';";
 };
}