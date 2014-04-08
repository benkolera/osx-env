(require 'cl)

(defun theme-directory? (f) (directory? f))
(defun directory? (f) (eq t (car (cdr f))))

(defun not-dots? (f) 
  (let ((file-name (car f)))
    (not (or (string= ".." file-name) (string= "." file-name)))))

(defun add-theme-dir (theme-base-dir theme-dir-name)
  (add-to-list 
   'custom-theme-load-path 
   (expand-file-name theme-dir-name theme-base-dir)))

(let ((themes-dir (expand-file-name "themes" lib-dir)))
  (mapcar 
   (lambda (x) (add-theme-dir themes-dir (car x)))
   (remove-if 
    (lambda (f) (not (and (directory? f) (not-dots? f))))
    (directory-files-and-attributes themes-dir))))

(load-theme 'wombat t)

(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))
