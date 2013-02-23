;; (defun eshell-in-command-line-p ()
;;   "カーソルがeshellのプロンプトにあるときに真を返す"
;;   (<= eshell-last-output-end (point)))
;; (defadvice eshell-previous-matching-input-from-input (around shellish activate)
;;   (if (eshell-in-command-line-p)
;;       ad-do-it
;;     (call-interactively 'previous-line)))
;; (defadvice eshell-next-matching-input-from-input ( around shellish activate)
;;   (if (eshell-in-command-line-p)
;;       ad-do-it
;;     (call-interactively 'next-line)))
;; (defun eshell-mode-hook--shellish ()
;;   (define-key eshell-mode-map " C-p" 'eshell-previous-matching-input-from-input)
;;   (define-key eshell-mode-map " C-n" 'eshell-next-matching-input-from-input))
;; (add-hook 'eshell-mode-hook 'eshell-mode-hook--shellish)
  