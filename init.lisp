(defpackage #:lem-my-init
  (:use #:cl
        #:lem
	#:lem-paredit-mode))
(in-package :lem-my-init)

;; �ơ���
(load-theme "emacs-dark")

;; ���ֹ�ɽ��
(setf (variable-value 'lem.line-numbers:line-numbers :global) t)

;; ��̤򥫥�ե�ˤ���
(lem-lisp-mode.paren-coloring:toggle-paren-coloring)

;; �����������ư��
(setf *scroll-recenter-p* nil)

;; �������ޤ��֤��ʤ�
(setf (variable-value 'truncate-lines :global) nil)

;; Qlot (M-x slime-qlot-exec)
(define-command slime-qlot-exec (directory)
  ((list (prompt-for-directory "Project directory: " (buffer-directory))))
  (change-directory directory)
  (lem-lisp-mode:run-slime (lem-lisp-mode::get-lisp-command :prefix "qlot exec ")))
