;;; Flymake
;; (defun display-error-message ()
;;     (message (get-char-property (point) 'help-echo)))
;; (defadvice flymake-goto-next-error (after flymake-goto-next-error-display-message activate)
;;     (display-error-message))
;; (defadvice flymake-goto-prev-error (after flymake-goto-prev-error-display-message activate)
;;     (display-error-message))
(require 'flymake)

(defun flymake-perl-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "perl" (list "-MProject::Libs lib_dirs => [qw(local/lib/perl5)]" "-wc" local-file))))