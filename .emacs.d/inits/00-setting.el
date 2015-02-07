;;delete keybind
(global-set-key "\C-h" 'delete-backward-char)

;; view
;;M-g g Ret 行番号
(require 'linum)
(global-linum-mode)
(setq linum-format "%3d ")
;;tab
(setq-default tab-width 8 indent-tabs-mode nil)
;;line
(setq next-line-add-newlines nil)
;;かっこを強調
(show-paren-mode t)
(display-time)
;;行,桁
(line-number-mode t)
(column-number-mode t)
;;color
(setq font-lock-maximum-decoration t)
(global-font-lock-mode 1)

;;utf-8
(prefer-coding-system 'utf-8-unix)

(require 'tramp)
(setq tramp-default-method "scp")
