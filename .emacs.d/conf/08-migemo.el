;(require 'migemo)
;(setq migemo-command "/usr/local/bin/cmigemo")
;(setq migemo-options '("-q" "--emacs"))
;(setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
;(setq migemo-user-dictionary nil)
;(setq migemo-coding-system 'utf-8-unix)
;(setq migemo-regex-dictionary nil)
;(load-library "migemo")
;(migemo-init)
;
;;; kill migemo process when quit emacs 
;(defadvice save-buffers-kill-terminal (before my-save-buffers-kill-terminal activate)
;    (when (process-list)
;          (dolist (p (process-list))
;                  (set-process-query-on-exit-flag p nil))))
