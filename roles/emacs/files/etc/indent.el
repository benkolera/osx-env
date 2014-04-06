(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

(global-set-key (kbd "C-c i c") 'indent-to-column)
