(setq user-full-name "Arsalan Kazmi"
      user-mail-address "sonicspeed848@gmail.com")

(setq doom-font (font-spec :family "Cascadia Code" :size 14)
      doom-variable-pitch-font (font-spec :family "sans" :size 15))

(setq doom-theme 'doom-dracula)

(setq display-line-numbers-type t)

(setq c-default-style "linux"
      c-basic-offset 4)
(setq tab-width 4)

(display-time-mode t)

(setq org-directory "~/org/")

(setq org-hide-emphasis-markers t)
(add-hook 'org-mode-hook 'org-appear-mode)

(defun org-heading-plus-size ()
  "Sets font sizes for Org headings, title and info."
  (set-face-attribute 'org-level-3 nil :height 1.2)
  (set-face-attribute 'org-level-2 nil :height 1.3)
  (set-face-attribute 'org-level-1 nil :height 1.5)
  (set-face-attribute 'org-document-title nil :height 1.7)
  (set-face-attribute 'org-document-info nil :height 1.2)
  (setq-default org-hidden-keywords '(title date author subtitle email))
  (setq-default org-ellipsis '" ▼ "))
(add-hook 'org-mode-hook 'org-heading-plus-size)

(map! :leader
      :desc "Quit Doom in a funny way"
      "c y a" #'save-buffers-kill-terminal)

(map! :leader
      :desc "dmenu"
      "d" #'dmenu)

(map! :leader
      :desc "Left tab"
      "[" #'centaur-tabs-backward-tab)
(map! :leader
      :desc "Right tab"
      "]" #'centaur-tabs-forward-tab)

(map! "s-d" #'dmenu
      "<s-return>" #'+vterm/toggle
      "s-h" #'evil-window-left
      "s-j" #'evil-window-down
      "s-k" #'evil-window-up
      "s-l" #'evil-window-right
      "s-H" #'evil-window-move-left
      "s-J" #'evil-window-move-down
      "s-K" #'evil-window-move-up
      "s-L" #'evil-window-move-right)

(setq-default exwm-replace 'nil)
(defun exwm-custom-init-stuff ()
  "Runs stuff when EXWM starts."
  (call-process "/bin/bash" "~/.doom.d/exwm-init-script.sh")
  (message "EXWM custom init stuff loaded!"))
(add-hook 'exwm-init-hook 'exwm-custom-init-stuff)
(require 'exwm)
(exwm-enable)
