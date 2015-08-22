(setq make-backup-files nil)
(show-paren-mode 1)
(setq backup-directory-alist
      `(("." . ,(expand-file-name
		 (concat user-emacs-directory "backups")))))
