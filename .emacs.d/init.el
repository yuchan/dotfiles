(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(require 'cl)

(defvar installing-package-list
  '(
    cider
    queue
    dash
    clojure-mode
    coffee-mode
    dash-at-point
    ensime
    popup
    company
    auto-complete
    popup
    exec-path-from-shell
    feature-mode
    init-loader
    lispxmp
    magit
    git-rebase-mode
    git-commit-mode
    markdown-mode
    open-junk-file
    ox-reveal
    org
    paredit
    popup
    projectile-rails
    rake
    f
    s
    inf-ruby
    inflections
    projectile
    pkg-info
    epl
    queue
    rake
    sbt-mode
    scala-mode2
    yasnippet
    exec-path-from-shell
    ))
(let ((not-installed (loop for x in installing-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
