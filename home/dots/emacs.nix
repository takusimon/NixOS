{ config, pkgs, ... }:

{
  programs.emacs = {
    enable = true;

    extraConfig = ''
      (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
      (load-theme 'noctalia t)
      (setq make-backup-files nil)
      (global-display-line-numbers-mode t)
    '';
  };

  services.emacs.defaultEditor = true;
}