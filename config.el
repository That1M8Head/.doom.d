;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Arsalan Kazmi"
      user-mail-address "sonicspeed848@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how they are implemented.

;; Tab bar mode
(tab-bar-mode t)

;; Org hooks
(add-hook 'org-mode-hook 'org-bullets-mode)
(add-hook 'org-mode-hook 'pandoc-mode)

;; Funny quit shortcut
(map! :leader
      :desc "Quit Doom in a funny way"
      "c y a" #'save-buffers-kill-terminal)

;; Tab bar shortcuts
(global-set-key (kbd "C-x t j") 'tab-bar-switch-to-prev-tab)
(global-set-key (kbd "C-x t k") 'tab-bar-switch-to-next-tab)
(map! :leader
      :desc "Open a new tab"
      "t t" #'tab-bar-new-tab)
(map! :leader
      :desc "Close current tab"
      "t k" #'tab-bar-close-tab)

;; C indentation
(setq c-default-style "linux"
      c-basic-offset 4)

;; Tab width
(setq tab-width 4)

;; Clock
(display-time-mode t)

;; Hide emphasis markers and use org-appear
(setq org-hide-emphasis-markers t)
(add-hook 'org-mode-hook 'org-appear-mode)