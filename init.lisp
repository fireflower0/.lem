(defpackage #:lem-my-init
  (:use #:cl
        #:lem
	#:lem-paredit-mode))
(in-package :lem-my-init)

;; テーマ
(load-theme "emacs-dark")

;; 行番号表示
(setf (variable-value 'lem.line-numbers:line-numbers :global) t)

;; 括弧をカラフルにする
(lem-lisp-mode.paren-coloring:toggle-paren-coloring)

;; スクロール時の動作
(setf *scroll-recenter-p* nil)

;; 行末で折り返さない
(setf (variable-value 'truncate-lines :global) nil)

;; Qlot (M-x slime-qlot-exec)
(define-command slime-qlot-exec (directory)
  ((list (prompt-for-directory "Project directory: " (buffer-directory))))
  (change-directory directory)
  (lem-lisp-mode:run-slime (lem-lisp-mode::get-lisp-command :prefix "qlot exec ")))
