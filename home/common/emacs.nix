{ config, pkgs, ... }:

{
  programs.emacs = {
    enable = true;

    extraConfig = ''
      (load-theme 'matugen t)
      (setq make-backup-files nil)
      (global-display-line-numbers-mode t)
    '';
  };

  services.emacs.defaultEditor = true;

  home.file.".emacs.d/matugen-theme.el".text = ''
;;; matugen-theme.el --- Transparent terminal-friendly Matugen theme

(deftheme matugen)

(defun matugen-get-color-from-css (var-name)
  (let* ((css-file (expand-file-name "colors.css" user-emacs-directory))
         (css-content
          (with-temp-buffer
            (insert-file-contents css-file)
            (buffer-string)))
         (var-pattern
          (concat
           "@define-color\\s-+"
           var-name
           "\\s-+\\(#[0-9a-fA-F]\\{6\\}\\);"))
         (match (string-match var-pattern css-content)))
    (if match
        (match-string 1 css-content)
      "#ffffff")))

(let*
    (
     (primary (matugen-get-color-from-css "primary"))
     (primary-container (matugen-get-color-from-css "primary_container"))

     (secondary (matugen-get-color-from-css "secondary"))
     (secondary-container (matugen-get-color-from-css "secondary_container"))

     (tertiary (matugen-get-color-from-css "tertiary"))
     (tertiary-container (matugen-get-color-from-css "tertiary_container"))

     (surface (matugen-get-color-from-css "surface"))
     (surface-container (matugen-get-color-from-css "surface_container"))

     (outline (matugen-get-color-from-css "outline"))
     (outline-variant (matugen-get-color-from-css "outline_variant"))

     (err (matugen-get-color-from-css "error"))
     (err-container (matugen-get-color-from-css "error_container"))

     (on-background (matugen-get-color-from-css "on_background"))
     (on-surface (matugen-get-color-from-css "on_surface"))
     (on-surface-variant (matugen-get-color-from-css "on_surface_variant"))

     (on-primary (matugen-get-color-from-css "on_primary"))
     (on-primary-container
      (matugen-get-color-from-css "on_primary_container"))

     (on-secondary (matugen-get-color-from-css "on_secondary"))
     (on-secondary-container
      (matugen-get-color-from-css "on_secondary_container"))

     (on-tertiary (matugen-get-color-from-css "on_tertiary"))
     (on-tertiary-container
      (matugen-get-color-from-css "on_tertiary_container"))

     (on-error (matugen-get-color-from-css "on_error"))
     (on-error-container
      (matugen-get-color-from-css "on_error_container")))

  (custom-theme-set-faces

   'matugen

   ;; Core

   `(default
      ((t (
           :foreground ,on-background))))

   `(cursor
      ((t (
           :background ,primary))))

   `(fringe
      ((t (
           :foreground ,outline))))

   `(region
      ((t (
           :background ,primary-container
           :foreground ,on-primary-container
           :extend t))))

   `(highlight
      ((t (
           :background ,surface-container))))

   `(shadow
      ((t (
           :foreground ,outline-variant))))

   `(link
      ((t (
           :foreground ,primary
           :underline t))))

   ;; Borders

   `(vertical-border
      ((t (
           :foreground ,surface))))

   `(window-divider
      ((t (
           :foreground ,surface))))

   ;; Line numbers

   `(line-number
      ((t (
           :foreground ,on-primary))))

   `(line-number-current-line
      ((t (
           :foreground ,primary
           :weight bold))))

   ;; Mode line

   `(mode-line
      ((t (
           :background ,surface
           :foreground ,on-surface
           :box nil))))

   `(mode-line-inactive
      ((t (
           :background ,surface-container
           :foreground ,on-surface-variant
           :box nil))))

   ;; Font lock

   `(font-lock-builtin-face
      ((t (
           :foreground ,primary))))

   `(font-lock-comment-face
      ((t (
           :foreground ,outline
           :slant italic))))

   `(font-lock-comment-delimiter-face
      ((t (
           :foreground ,outline-variant))))

   `(font-lock-constant-face
      ((t (
           :foreground ,tertiary))))

   `(font-lock-doc-face
      ((t (
           :foreground ,on-surface-variant))))

   `(font-lock-function-name-face
      ((t (
           :foreground ,primary
           :weight bold))))

   `(font-lock-keyword-face
      ((t (
           :foreground ,secondary
           :weight bold))))

   `(font-lock-string-face
      ((t (
           :foreground ,tertiary))))

   `(font-lock-type-face
      ((t (
           :foreground ,primary))))

   `(font-lock-variable-name-face
      ((t (
           :foreground ,on-surface))))

   `(font-lock-warning-face
      ((t (
           :foreground ,err
           :weight bold))))

   ;; Minibuffer

   `(minibuffer-prompt
      ((t (
           :foreground ,primary
           :weight bold))))

   ;; Search

   `(isearch
      ((t (
           :background ,secondary-container
           :foreground ,on-secondary-container
           :weight bold))))

   `(lazy-highlight
      ((t (
           :background ,surface-container
           :foreground ,on-surface))))

   ;; Matching

   `(show-paren-match
      ((t (
           :background ,primary-container
           :foreground ,on-primary-container
           :weight bold))))

   `(show-paren-mismatch
      ((t (
           :background ,err-container
           :foreground ,on-error-container
           :weight bold))))

   ;; Org mode

   `(org-hide
      ((t (
           :foreground unspecified))))

   `(org-document-title
      ((t (
           :foreground ,primary
           :weight bold
           :height 1.2))))

   `(org-level-1
      ((t (
           :foreground ,primary
           :weight bold))))

   `(org-level-2
      ((t (
           :foreground ,secondary
           :weight bold))))

   `(org-level-3
      ((t (
           :foreground ,tertiary
           :weight bold))))

   `(org-code
      ((t (
           :foreground ,primary))))

   `(org-verbatim
      ((t (
           :foreground ,secondary))))

   `(org-block
      ((t (
           :inherit fixed-pitch
           :extend t))))

   `(org-block-begin-line
      ((t (
           :foreground ,outline
           :slant italic))))

   `(org-block-end-line
      ((t (
           :foreground ,outline
           :slant italic))))

   ;; Company

   `(company-tooltip
      ((t (
           :background ,surface
           :foreground ,on-surface))))

   `(company-tooltip-selection
      ((t (
           :background ,primary-container
           :foreground ,on-primary-container))))

   ;; Magit

   `(magit-section-highlight
      ((t (
           :background ,surface-container))))

   `(magit-diff-added
      ((t (
           :background ,tertiary-container
           :foreground ,on-tertiary-container))))

   `(magit-diff-removed
      ((t (
           :background ,err-container
           :foreground ,on-error-container))))

   ;; Dired

   `(dired-directory
      ((t (
           :foreground ,primary
           :weight bold))))

   `(dired-symlink
      ((t (
           :foreground ,secondary))))

   ;; Terminal

   `(term-color-black
      ((t (
           :foreground ,surface
           :background ,surface))))

   `(term-color-red
      ((t (
           :foreground ,err
           :background ,err))))

   `(term-color-green
      ((t (
           :foreground ,secondary
           :background ,secondary))))

   `(term-color-yellow
      ((t (
           :foreground ,tertiary
           :background ,tertiary))))

   `(term-color-blue
      ((t (
           :foreground ,primary
           :background ,primary))))

   `(term-color-magenta
      ((t (
           :foreground ,secondary-container
           :background ,secondary-container))))

   `(term-color-cyan
      ((t (
           :foreground ,tertiary-container
           :background ,tertiary-container))))

   `(term-color-white
      ((t (
           :foreground ,on-surface
           :background ,on-surface))))

   ;; Rainbow delimiters

   `(rainbow-delimiters-depth-1-face
      ((t (
           :foreground ,primary))))

   `(rainbow-delimiters-depth-2-face
      ((t (
           :foreground ,secondary))))

   `(rainbow-delimiters-depth-3-face
      ((t (
           :foreground ,tertiary))))

   `(rainbow-delimiters-depth-4-face
      ((t (
           :foreground ,primary-container))))

   `(rainbow-delimiters-depth-5-face
      ((t (
           :foreground ,secondary-container))))

   `(rainbow-delimiters-depth-6-face
      ((t (
           :foreground ,tertiary-container))))

   ;; Eshell

   `(eshell-prompt
      ((t (
           :foreground ,primary
           :weight bold))))

   `(eshell-ls-directory
      ((t (
           :foreground ,primary
           :weight bold))))

   `(eshell-ls-symlink
      ((t (
           :foreground ,secondary))))

   `(eshell-ls-executable
      ((t (
           :foreground ,tertiary))))

   ;; Flycheck

   `(flycheck-error
      ((t (
           :underline (:style wave :color ,err)))))

   `(flycheck-warning
      ((t (
           :underline (:style wave :color ,secondary)))))

   `(flycheck-info
      ((t (
           :underline (:style wave :color ,primary)))))
   ))

(with-eval-after-load 'org
  (setq org-hide-leading-stars t)
  (setq org-startup-indented t))

(provide-theme 'matugen)
;;; matugen-theme.el ends here
'';
}

