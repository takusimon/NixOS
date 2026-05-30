{config,pkgs,...}:{
programs.emacs = {
 enable = true;
 extraConfig = ''
  (load-theme 'matugen t)
 '';
};
services.emacs.defaultEditor = true;
}