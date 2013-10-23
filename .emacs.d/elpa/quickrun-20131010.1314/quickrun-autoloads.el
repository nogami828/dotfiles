;;; quickrun-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (helm-quickrun anything-quickrun quickrun-shell
;;;;;;  quickrun-compile-only quickrun-replace-region quickrun-region
;;;;;;  quickrun-with-arg quickrun quickrun-add-command quickrun-set-default)
;;;;;;  "quickrun" "../../../../../../.emacs.d/elpa/quickrun-20131010.1314/quickrun.el"
;;;;;;  "c7069a13ff5329356560b0ee87c145c2")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/quickrun-20131010.1314/quickrun.el

(autoload 'quickrun-set-default "quickrun" "\
Set `key' as default key in programing language `lang'

\(fn LANG KEY)" nil nil)

(autoload 'quickrun-add-command "quickrun" "\


\(fn KEY ALIST &key DEFAULT MODE OVERRIDE)" nil nil)

(autoload 'quickrun "quickrun" "\
Run commands quickly for current buffer
   With universal prefix argument(C-u), select command-key,
   With double prefix argument(C-u C-u), run in compile-only-mode

\(fn &rest PLIST)" t nil)

(autoload 'quickrun-with-arg "quickrun" "\
Run commands quickly for current buffer with arguments

\(fn ARG)" t nil)

(autoload 'quickrun-region "quickrun" "\
Run commands with specified region

\(fn START END)" t nil)

(autoload 'quickrun-replace-region "quickrun" "\
Run commands with specified region and replace

\(fn START END)" t nil)

(autoload 'quickrun-compile-only "quickrun" "\
Exec only compilation

\(fn)" t nil)

(autoload 'quickrun-shell "quickrun" "\
Run commands in shell for interactive programs

\(fn)" t nil)

(autoload 'anything-quickrun "quickrun" "\


\(fn)" t nil)

(autoload 'helm-quickrun "quickrun" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/quickrun-20131010.1314/quickrun-pkg.el"
;;;;;;  "../../../../../../.emacs.d/elpa/quickrun-20131010.1314/quickrun.el")
;;;;;;  (21095 13720 336912))

;;;***

(provide 'quickrun-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; quickrun-autoloads.el ends here
