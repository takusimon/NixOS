{config,pkgs,...}:{
programs.emacs = {
 enable = true;
 defaultEditor = true;
 extraConfig = ''
  (load-theme 'matugen t)
 '';
};