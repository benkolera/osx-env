(require 'tiling)
(require 'escreen)

(define-key global-map (kbd "C-c w SPC") 'tiling-cycle) 
(define-key global-map (kbd "C-c w <up>") 'tiling-tile-up)
(define-key global-map (kbd "C-c w <down>") 'tiling-tile-down)
(define-key global-map (kbd "C-c w <right>") 'tiling-tile-right)
(define-key global-map (kbd "C-c w <left>") 'tiling-tile-left)

(escreen-install)

(windmove-default-keybindings 'meta)
