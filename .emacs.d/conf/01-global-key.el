;;; key config

;; exchange alt <-> meta
(custom-set-variables
   '(ns-alternate-modifier 'alt)
   '(ns-command-modifier   'meta))

;; exchange C-j <-> C-m
(keyboard-translate ?\C-j ?\C-m)
(keyboard-translate ?\C-m ?\C-j)

;; global-set-key
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "C-o") 'other-window)
(define-key global-map (kbd "C-\\") 'undo)

;; 折り返しトグルコマンド
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; C-mにnewline-and-indentを割り当てる。
;; 先ほどとは異なりglobal-set-keyを利用
(global-set-key (kbd "C-m") 'newline-and-indent)

;; C-lをプレフィックスキーにする
(global-set-key (kbd "C-l") nil)
(global-set-key (kbd "C-l C-l") 'recenter-top-bottom)

;; mark-sexp 
(define-key global-map (kbd "C-l C-p") 'mark-sexp)
;; esell
(define-key global-map (kbd "C-l s") 'eshell)
