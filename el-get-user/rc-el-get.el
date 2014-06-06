(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq el-get-user-package-directory "~/.emacs.d/el-get-user/rc.d/")
                                        ;(setq el-get-byte-compile nil)

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(setq el-get-sources '(
;;                       nav-flash
;;                       smartrep ucs-utils persistent-soft
;;                     list-utils pcache visible-mark
;;
;;                       auto-complete
;;                       back-button
                       cedet
;;                       cmake-mode
;;                       cmake-project
;;                       protobuf-mode
                       ))

(el-get 'sync el-get-sources)
(el-get 'sync)
