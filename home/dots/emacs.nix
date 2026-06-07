{ config, pkgs, ... }:

{
  programs.emacs = {
    enable = true;

    extraConfig = ''
      (load-theme 'noctalia t)
      (setq make-backup-files nil)
      (global-display-line-numbers-mode t)
      (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
    '';
  };

  services.emacs.defaultEditor = true;
}