;;; rc-auto-enca.el --- auto-enca startup
;;; Commentary:
;;; Code:

(when (load "auto-enca")
  (modify-coding-system-alist 'file "" 'enca-detect-coding))
;;; rc-auto-enca.el ends here
