(require 'auto-complete-config)
(ac-config-default)

(defun my-ac-common-setup ()
  (add-to-list 'ac-sources 'ac-source-filename)
  )

(add-hook 'auto-complete-mode-hook 'my-ac-common-setup)

(setq ac-auto-start nil)
(define-key ac-mode-map [(meta return)] 'auto-complete)

;;(add-to-list 'ac-dictionary-directories "~/emacs/ac-dicts")
