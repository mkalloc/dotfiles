(load (expand-file-name (concat (getenv "HOME") "/.emacs.d/init")))
(put 'upcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-hunk-header ((t (:background "brightred" :foreground "black"))))
 '(diff-removed ((t (:background "color-22" :foreground "brightred"))))
 '(diff-added ((t (:background "yellow" :foreground "black"))))
 '(custom-face-tag ((t (:inherit custom-variable-tag :foreground "brightred"))))
 '(custom-group-tag ((t (:inherit variable-pitch :foreground "brightred" :weight bold :height 1.2))))
 '(custom-variable-tag ((t (:foreground "brightred" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "Blue"))))
 '(highlight ((t (:background "darkseagreen2" :foreground "black"))))
 '(hlline-face ((t (:background "OliveDrab1" :foreground "black"))))
 '(lazy-highlight ((t (:background "paleturquoise" :foreground "black"))))
 '(match ((t (:background "yellow1" :foreground "black"))))
 '(minibuffer-prompt ((t (:foreground "brightyellow"))))
 '(next-error ((t (:inherit region :foreground "black"))))
 '(region ((t (:background "lightgoldenrod2" :foreground "black"))))
 '(secondary-selection ((t (:background "yellow1" :foreground "black"))))
 '(show-paren-match ((t (:background "turquoise" :foreground "black")))))
