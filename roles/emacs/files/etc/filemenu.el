(require 'flx-ido)
(require 'projectile)
(require 'tramp)
(require 'recentf)

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(projectile-global-mode)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)

(global-set-key "\C-x\ \C-f" 'recentf-open-files)
(global-set-key (kbd "C-x C-b") 'ibuffer)
