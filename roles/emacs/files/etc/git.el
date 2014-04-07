(require 'magit)

(global-set-key (kbd "C-c g s") 'magit-status)
(global-set-key (kbd "C-c g p") 'magit-pull)

(setq magit-git-command "/usr/local/bin/git")
(setq magit-emacsclient-executable "/usr/local/bin/emacsclient") 
