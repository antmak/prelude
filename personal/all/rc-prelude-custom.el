;;; rc-prelude-custom.el --- изменяет настройки, которые уже прописаны в Prelude
;;; Commentary:

;;; Code:

;; workaround: EL documentation suggest
;; (eval-after-load 'flycheck '(setq flycheck-checkers
;;                                   (delq 'emacs-lisp-checkdoc flycheck-checkers)))

;; workaround: aspell error
;;(setq prelude-flyspell nil)

;; scroll
(setq scroll-margin 5
      scroll-conservatively 10000
      scroll-preserve-screen-position 1 ;; nil
      scroll-step 1
      mouse-wheel-follow-mouse t
      mouse-wheel-progressive-speed nil
      mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; hooks
;; (defun alexott/common-hook ()
;;   ;; (local-set-key "\C-c:" 'uncomment-region)
;;   ;; (local-set-key "\C-c;" 'comment-region)
;;   (local-set-key "\C-c\C-c" 'comment-region)
;;   (font-lock-mode 1)
;;   )
;; (add-hook 'prog-mode-hook 'alexott/common-hook)

;; company-mode
;; (autoload 'company-mode "company" nil t)
;; (add-hook 'after-init-hook 'global-company-mode)
;; (eval-after-load 'company
;;   '(add-to-list 'company-backends 'company-cmake))

;; C++ header guards
;; (global-set-key [C-f12]
;;              '(lambda ()
;;                 (interactive)
;;                 (if (buffer-file-name)
;;                     (let*
;;                         ((fName (upcase (file-name-nondirectory (file-name-sans-extension buffer-file-name))))
;;                          (ifDef (concat "#ifndef " fName "_H_" "\n#define " fName "_H_" "\n"))
;;                          (begin (point-marker))
;;                          )
;;                       (progn
;;                                      ; If less then 5 characters are in the buffer, insert the class definition
;;                         (if (< (- (point-max) (point-min)) 5 )
;;                             (progn
;;                               (insert "\nclass " (capitalize fName) "\n{\npublic:\n\nprivate:\n\n};\n")
;;                               (goto-char (point-min))
;;                               (next-line-nomark 3)
;;                               (setq begin (point-marker))
;;                               )
;;                           )

;;                                      ;Insert the Header Guard
;;                         (goto-char (point-min))
;;                         (insert ifDef)
;;                         (goto-char (point-max))
;;                         (insert "\n#endif" " //" fName "_H_")
;;                         (goto-char begin))
;;                       )
;;                                         ;else
;;                   (message (concat "Buffer " (buffer-name) " must have a filename"))
;;                   )
;;                 )
;;              )

;; (global-set-key [C-tab]
;;                 'switch-to-buffer)

;; отменяем зум
(global-set-key (kbd "C-+") 'nil)
(global-set-key (kbd "C--") 'nil)

;;;
(require 'whitespace)
(setq whitespace-line-column 100) ;; limit line length

;;; rc-prelude-custom.el ends here
