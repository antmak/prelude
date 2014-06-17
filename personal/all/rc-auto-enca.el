;;; rc-auto-enca.el --- auto-enca startup
;;; Commentary:
;;; Code:

(setenv "ENCAOPT" "-L russian")

(when (load "auto-enca" 'noerror)
  (modify-coding-system-alist 'file "" 'enca-detect-coding))
;;; rc-auto-enca.el ends here
