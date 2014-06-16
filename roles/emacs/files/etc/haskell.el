;(add-to-list 'load-path (concat "/Users/ben/lib/emacs/structured-haskell-mode" "elisp"))

(require 'haskell-mode)
;;(require 'shm)

(autoload 'ghc-init "ghc" nil t)
(add-hook 'haskell-mode-hook 'ghc-init)
;;(add-hook 'haskell-mode-hook 'structured-haskell-mode)

(setq auto-mode-alist (cons '("\\.hs$" . haskell-mode) auto-mode-alist))

;;For yesod
(add-to-list 'auto-mode-alist '("\\.hamlet$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.lucius$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.cassius$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.julius$" . javascript-mode))

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'highlight-80+-mode)

 (setq haskell-font-lock-symbols 'unicode)
 (setq haskell-program-name "ghc-mod-repl")


