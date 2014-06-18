(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map "u" 'undo)

;; Left, down, up, right: [htns] (previously: [hjkl]).
(define-key evil-motion-state-map "h" 'evil-backward-char)
(define-key evil-motion-state-map "n" 'evil-next-line)
(define-key evil-motion-state-map "t" 'evil-previous-line)
(define-key evil-motion-state-map "s" 'evil-forward-char) (define-key evil-normal-state-map "s" nil)

;; Down/up displayed line (as opposed to physical line): gt/gn (previously: gj/gk).
(define-key evil-motion-state-map "gn" 'evil-next-visual-line) (define-key evil-motion-state-map "gj" nil)
(define-key evil-motion-state-map "gt" 'evil-previous-visual-line) (define-key evil-motion-state-map "gk" nil)

;; First non-blank/last character of the line: H/S (previously: H/L -- first/last visible line in the window).
(define-key evil-motion-state-map "H" 'evil-first-non-blank)
(define-key evil-motion-state-map "S" 'evil-end-of-line) (define-key evil-normal-state-map "S" nil)

;; Join lines with/without changing whitespace: T/gT (previously: J/gJ).
(define-key evil-normal-state-map "N" 'evil-join) (define-key evil-motion-state-map "N" nil)
(define-key evil-normal-state-map "gN" 'evil-join-whitespace)

;; Jump before a given character forward/backward: j/J (previously: t/T).
(define-key evil-motion-state-map "j" 'evil-find-char-to)
(define-key evil-motion-state-map "J" 'evil-find-char-to-backward) (define-key evil-normal-state-map "J" nil)

;; Substitute (kill): k (previously: s).
(define-key evil-normal-state-map "k" 'evil-substitute) (define-key evil-motion-state-map "k" nil)
;; K -- look up the keyword at point (like `man').

;; Next/previous search result: l/L (previously: n/N).
(define-key evil-motion-state-map "l" 'evil-search-next)
(define-key evil-motion-state-map "L" 'evil-search-previous)
