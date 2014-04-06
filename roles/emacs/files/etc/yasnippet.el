(put 'downcase-region 'disabled nil)

(require 'yasnippet) 
(yas/initialize)

;; Taking the yasnippet bundled snippets out since they are tricky to 
;; keep the link consistent with the dir name that melpa gives them
;; will find a fancy hack to make this work if I find myself needing them.
(setq yas/root-directory (list "{{ emacs_yasnippet }}"))
                           
(mapc 'yas/load-directory yas/root-directory)

