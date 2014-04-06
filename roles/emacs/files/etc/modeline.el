(when (require 'diminish nil 'noerror)
   (eval-after-load "helm"
       '(diminish 'helm-mode "Hm"))
   (eval-after-load "projectile"
       '(diminish 'projectile-mode "Pr"))
   (eval-after-load "abbrev"
     '(diminish 'abbrev-mode "Ab"))
   (eval-after-load "yasnippet"
     '(diminish 'yas/minor-mode "Ys")))
