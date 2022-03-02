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

(setq centaur-tabs-style "rounded")

(setq org-directory "~/org/")

(setq org-hide-emphasis-markers t)
(add-hook 'org-mode-hook 'org-appear-mode)

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

(setq-default exwm-replace 'nil)
(defun exwm-custom-init-stuff ()
  "Runs stuff when EXWM starts."
  (call-process "/bin/bash" "~/.doom.d/exwm-init-script.sh")
  (message "EXWM custom init stuff loaded!"))
(add-hook 'exwm-init-hook 'exwm-custom-init-stuff)
(require 'exwm)
(exwm-enable)
