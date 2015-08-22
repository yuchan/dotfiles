;;; openjunkfile:

(require 'open-junk-file)
(setq open-junk-file-format "~/dotfiles/junk/%Y/%m/%Y-%m-%d-%H%M%S.")
(global-set-key (kbd "C-x j") 'open-junk-file)
