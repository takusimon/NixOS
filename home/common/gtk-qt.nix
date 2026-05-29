{config,pkgs,...}:{
  qt = {
   enable = true;
   qt5ctSettings = {
    Appearance = {
     color_scheme_path = "~/.config/qt5ct/colors/matugen.conf";
     custom_palette = "true";
    };
   };

  qt6ctSettings = {
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