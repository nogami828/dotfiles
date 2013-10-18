;; variables
(custom-set-variables
 '(truncate-lines           t)               ; truncate line
 '(indent-tabs-mode         nil)             ; don't use tab
 '(make-backup-files        nil)             ; don't make *~ files
 '(auto-save-default        nil)             ; don't make *# files 
 '(tab-width                4)               ; tab width 4
 '(find-file-visit-truename t)               ; visit truename
 '(read-file-name-completion-ignore-case t)) ; for case insensitive find-file

;; goto-line
;(define-key ctl-x-map "\\" 'undo) 

;; goto-line
(define-key ctl-x-map "l" 'goto-line) 

;; show parentheses
(show-paren-mode t)
(setq show-paren-delay 0) ; 表示までの秒数。初期値は0.125
;; parenのスタイル: expressionは括弧内も強調表示
(setq show-paren-style 'expression)

;; auto-complete
;; (auto-install-batch "auto-complete development version")
(require 'auto-complete-config)

(global-auto-complete-mode t)
(custom-set-variables
 '(ac-use-menu-map           t)
 '(ac-dictionary-directories '("~/.emacs.d/etc/ac-dict")))
(define-key ac-menu-map (kbd "C-n")   'ac-next)
(define-key ac-menu-map (kbd "C-p")   'ac-previous)
(define-key ac-menu-map (kbd "M-TAB") nil)

;; smartchr
;; (auto-install-from-url "https://raw.github.com/imakado/emacs-smartchr/master/smartchr.el")
;; (require 'smartchr)
;; ((define-key global-map (kbd "=")  (smartchr '(" = " "=")))
;; ((define-key global-map (kbd "(")  (smartchr '("(`!!')" "(")))
;; ((define-key global-map (kbd "{")  (smartchr '("{`!!'}" "{")))
;; ((define-key global-map (kbd "[")  (smartchr '("[`!!']" "[")))
;; ((define-key global-map (kbd "<")  (smartchr '("<`!!'>" "<")))
;; ((define-key global-map (kbd ">")  (smartchr '(" => " ">")))
;; ((define-key global-map (kbd "'")  (smartchr '("'`!!''" "'")))
;; ((define-key global-map (kbd "\"") (smartchr '("\"`!!'\"" "\"")))

;; change face
(set-face-background 'show-paren-match-face nil)
(set-face-underline-p 'show-paren-match-face "yellow")

;;undo redo
(when (require 'redo+ nil t)
  (global-set-key (kbd "C-M-\\") 'redo)
  ) 

;; (auto-install-from-emacswiki "sticky.el")

;; isearch
(define-key isearch-mode-map (kbd "C-h") 'isearch-delete-char)

;(require 'sticky)
;(use-sticky-key ?\; sticky-alist:en)
;cua-mode
(cua-mode -1)
(setq cua-enable-cua-keys nil)
(define-key global-map (kbd "C-l c") 'cua-mode)
(define-key cua-global-keymap (kbd "C-@") 'cua-set-rectangle-mark)


;; unique buffer
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "[^*]+*")

(require 'color-moccur)
(require 'moccur-edit)
(define-key global-map (kbd "C-l o") 'moccur)
(define-key global-map (kbd "C-l g") 'moccur-grep)
(define-key global-map (kbd "C-l r") 'query-replace)
(define-key global-map (kbd "C-l \\") 'indent-region)

(define-key global-map (kbd "C-l e") 'eval-current-buffer)

; auto-save
(require 'auto-save-buffers)
(run-with-idle-timer 180 t 'auto-save-buffers)

; xterm-mouse-mode
(unless (fboundp 'track-mouse)
    (defun track-mouse (e)))
(xterm-mouse-mode t)
(require 'mouse)
(require 'mwheel)
(mouse-wheel-mode t)

; dash-at-point
(autoload 'dash-at-point "dash-at-point"
           "Search the word at point with Dash." t nil)
(global-set-key "\C-ld" 'dash-at-point)

; which-function-mode
(which-function-mode 1)

;; mode-line  color
(set-face-foreground 'modeline "#000000")
;; mode-line background color
(set-face-background 'modeline "LightGray")
