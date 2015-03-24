(require 'slime)
(autoload 'slime "slime" nil t)
(autoload 'slime-mode "slime" nil t)
(add-to-list 'auto-mode-alist '("\\.lisp$" . lisp-mode))
(add-to-list 'auto-mode-alist '("\\.cl$" . lisp-mode))
(add-to-list 'interpreter-mode-alist '("sbcl" . lisp-mode))

(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

(add-hook 'lisp-mode-hook
          '(lambda ()
             (unless (get-buffer "*slime-repl sbcl*")
                 (progn
                   (switch-to-buffer (buffer-name))
                   (setq inferior-lisp-program "sbcl")
                   (slime-mode)
                   (slime-setup '(slime-repl slime-fancy slime-banner))
                   (slime)))))
