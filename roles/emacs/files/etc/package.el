;;Define this before package is loaded. Bit of a hack. 
(defvar package-user-dir (expand-file-name "elpa" lib-dir))

(require 'cl)
(require 'package)
(require 'url)

(mapc 
 (lambda (x) (add-to-list 'package-archives x)) 
 '(("marmalade" . "http://marmalade-repo.org/packages/")
   ("melpa" . "http://melpa.milkbox.net/packages/")
   ("SC"   . "http://joseito.republika.pl/sunrise-commander/")))

(package-initialize)

(defvar package-required
  '(anything
    auctex
    auto-complete
    blank-mode
    coffee-mode
    cperl-mode
    css-mode
    csv-mode
    diminish
    fastnav
    find-file-in-project
    fill-column-indicator
    flymake-hlint
    furl
    haskell-mode
    helm
    htmlize
    idomenu
    helm
    helm-git
    helm-projectile
    highlight-80+
    gist
    ghc
    linum-off
    magit
    markdown-mode
    markdown-mode+
    multi-eshell
    org-pomodoro
    projectile
    puppet-mode
    rainbow-mode
    rw-hunspell
    rw-ispell
    rw-language-and-country-codes
    scala-mode2
    track-closed-files
    w3m
    yaml-mode
    yasnippet-bundle
    )
  "Libraries that should be installed by default.")

(defun package-install-required ()
  (interactive)
  (dolist (package package-required)
    (unless (package-installed-p package)
      (message "Installing %s" (symbol-name package))
      (package-install package))))

(defun emacs-online? ()
  (let ((okay nil))
    (unwind-protect 
        (condition-case nil
            (url-retrieve "http://www.google.com.au" (lambda (status) (setq okay 't)))
          (error nil))
      okay)))

;; On your first run, this should pull in all the base packages.
(when (emacs-online?)
  (unless package-archive-contents (package-refresh-contents))
  (package-install-required))
