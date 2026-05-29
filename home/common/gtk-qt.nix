{config,pkgs,...}:{
  qt = {
   enable = true;
   qt5ctsettings = {
    Appearance = {
     color_scheme_path = "~/.config/qt5ct/colors/matugen.conf";
     custom_palette = "true";
    };
   };

  qt6ctsettings = {
   Appearance = {
     color_scheme_path = "~/.config/qt5ct/colors/matugen.conf";
     custom_palette = "true";
   };
 };
};

gtk = {
 enable = true;
 gtk3.extraCss = "@import 'colors.css';";
 gtk4.extraCss = "@import 'colors.css';";
 };
}