(defpackage #:lem-my-init
  (:use #:cl
        #:lem))
(in-package :lem-my-init)

;; �ơ���
(load-theme "emacs-dark")

;; ���ֹ�ɽ��
(setf (variable-value 'lem.line-numbers:line-numbers :global) t)

;; ��̤򥫥�ե�ˤ���
(lem-lisp-mode.paren-coloring:toggle-paren-coloring)

;; Qlot (M-x slime-qlot-exec)
(define-command slime-qlot-exec (directory)
  ((list (prompt-for-directory "Project directory: " (buffer-directory))))
  (change-directory directory)
  (lem-lisp-mode:run-slime (lem-lisp-mode::get-lisp-command :prefix "qlot exec ")))