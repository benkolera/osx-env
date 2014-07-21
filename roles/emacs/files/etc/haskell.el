(require 'haskell-mode)

(autoload 'ghc-init "ghc" nil t)

(add-hook 'haskell-mode-hook
  (lambda ()
    (setq mode-name "λ")
    (turn-on-haskell-doc)
    (diminish 'haskell-doc-mode "")
    (capitalized-words-mode)
    (diminish 'capitalized-words-mode "CW")
    (setq evil-auto-indent nil)
    (ghc-init)
    (turn-on-haskell-indentation)
    (setq haskell-font-lock-symbols 'unicode))) 

(setq auto-mode-alist (cons '("\\.hs$" . haskell-mode) auto-mode-alist))

(setq haskell-program-name "ghc-mod-repl")


