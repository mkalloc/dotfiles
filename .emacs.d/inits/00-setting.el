;;path
(require 'exec-path-from-shell)
(let ((envs '("PATH" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))

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
;;補完
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;;現在行をハイライト
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "OliveDrab1"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(setq hl-line-face 'underline)
(global-hl-line-mode)
;;変数
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)

;;utf-8
(prefer-coding-system 'utf-8-unix)

;; auto chmod +x
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

(require 'tramp)
(setq tramp-default-method "scp")

