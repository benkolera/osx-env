(require 'helm)
(require 'projectile)
(require 'tramp)
(require 'recentf)

(helm-mode 1)
(projectile-global-mode)
 
(recentf-mode t)

(global-set-key (kbd "C-x f") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c p h") 'helm-projectile)
