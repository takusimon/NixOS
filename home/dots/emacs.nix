{ config, pkgs, ... }:

{
  programs.emacs = {
    enable = true;

    extraConfig = ''
      (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
      (load-theme 'noctalia t)
      (setq make-backup-files nil)
      (global-display-line-numbers-mode t)
      (setq-default inhibit-startup-message t
                use-short-answers t)
      (add-to-list 'default-frame-alist
             '(font . "JetBrainsMono Nerd Font Mono-14"))
      (tool-bar-mode -1)
      (menu-bar-mode -1)
      (scroll-bar-mode -1)
    '';
  };

  services.emacs.defaultEditor = true;
}