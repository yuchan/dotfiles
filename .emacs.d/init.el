;; Stop beeping                                                               
(setq ring-bell-function 'ignore)                                             

;; No Backup
(setq make-backup-files nil)
(show-paren-mode t)
;; vendor setting 
(setq load-path
      (append
       '("~/.emacs.d/vendor"
	 "~/.emacs.d/vendor/auto-install"
	 )
       load-path))

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'server)
(unless (server-running-p)
  (server-start))


(require 'paredit)
(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(require 'php-mode)
(setq php-mode-force-pear t)
(add-to-list 'auto-mode-alist
	          '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))
;; php-mode-hook
(add-hook 'php-mode-hook
          (lambda ()
            (require 'php-completion)
            (php-completion-mode t)
            (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)
            (make-local-variable 'ac-sources)
            (setq ac-sources '(
                               ac-source-words-in-same-mode-buffers
                               ac-source-php-completion
                               ac-source-filename
                               ))))

(setq auto-install-directory "~/.emacs.d/vendor/auto-install/")
(require 'auto-install)
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)

(require 'anything-startup)

(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")

(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'lisp-mode-hook 'set-newline-and-indent)
(add-hook 'php-mode-hook 'set-newline-and-indent)
(add-hook 'js-mode-hook 'js2-minor-mode)

(require 'gist)

(require 'color-theme)
(color-theme-initialize)
(require 'lispxmp)

(require 'rails-autoload)

(require 'server)
(unless (server-running-p)
  (server-start))

