(defpackage #:lem-my-init
  (:use #:cl
        #:lem))
(in-package :lem-my-init)

(load-theme "emacs-dark")

(setf *scroll-recenter-p* t)
(setf (variable-value 'truncate-lines :global) nil)
(setf (variable-value 'lem.line-numbers:line-numbers :global) t)

(lem-lisp-mode.paren-coloring:toggle-paren-coloring)

(define-command slime-qlot-exec (directory)
  ((list (prompt-for-directory "Project directory: " (buffer-directory))))
  (change-directory directory)
  (lem-lisp-mode:run-slime (lem-lisp-mode::get-lisp-command :prefix "qlot exec ")))
