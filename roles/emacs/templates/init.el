(require 'cask "/usr/local//share/emacs/site-lisp/cask.el")
(cask-initialize)

(setq org-dir "{{emacs_org}}")

(require 'ob-tangle)
(org-babel-load-file (expand-file-name "_init.org" user-emacs-directory)) 

