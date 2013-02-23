;; common lisp
(require 'cl)

;; load-path を追加する関数を定義
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp" "conf" "skk")

;;auto-install
(when (require 'auto-install nil t)	
  (setq auto-install-directory "~/.emacs.d/elisp/")
;  (auto-install-update-emacswiki-package-name t)
;  (auto-install-compatibility-setup)
) 

;; init loader
;; http://coderepos.org/share/browser/lang/elisp/init-loader/init-loader.el
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")

(put 'set-goal-column 'disabled nil)


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
;(when
;    (load
;     (expand-file-name "~/.emacs.d/elpa/package.el"))
;  (setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
;                           ("gnu" . "http://elpa.gnu.org/packages/")
;                           ("marmalade" . "http://marmalade-repo.org/packages/")))
;  (package-initialize))
