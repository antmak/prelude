;;; emacs-rc-cedet.el --- Description
;;; Commentary:


(setq cedet-root-path (file-name-as-directory "~/.emacs.d/el-get/cedet/"))

(add-to-list 'load-path (concat cedet-root-path "contrib"))

;; (require 'cedet-contrib)

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-breadcrumbs-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)

;; ----

(semantic-mode 1)

(global-semantic-idle-breadcrumbs-mode 1)

(require 'eassist)

(require 'semantic/ia)
(require 'semantic/bovine/gcc)
(require 'semantic/sb)
;;(require 'semantic/bovine/c)
;;(require 'semantic/bovine/clang)

(require 'cedet-files)
(require 'cedet-cscope)


;; (defun my-c-mode-common-hook ()
;;   (define-key c-mode-base-map (kbd "M-o") 'eassist-switch-h-cpp)
;;   (define-key c-mode-base-map (kbd "M-m") 'eassist-list-methods))
;; (add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;; (defun my-c-mode-cedet-hook ()
;;   (local-set-key "." 'semantic-complete-self-insert)
;;   (local-set-key ">" 'semantic-complete-self-insert))
;; (add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

;; ;; customisation of modes
;; (defun alexott/cedet-hook ()
;;   (local-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
;;   (local-set-key "\C-c?" 'semantic-ia-complete-symbol)
;;   ;;
;;   (local-set-key "\C-c>" 'semantic-comlplete-analyze-inline)
;;   (local-set-key "\C-c=" 'semantic-decoration-include-visit)

;;   (local-set-key "\C-cj" 'semantic-ia-fast-jump)
;;   ;; (local-set-key "\C-cq" 'semantic-ia-show-doc)
;;   ;; (local-set-key "\C-cs" 'semantic-ia-show-summary)
;;   ;; (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
;;   ;;  (local-set-key (kbd "C-c <left>") 'semantic-tag-folding-fold-block)
;;   ;;  (local-set-key (kbd "C-c <right>") 'semantic-tag-folding-show-block)

;;   (add-to-list 'ac-sources 'ac-source-semantic)
;;   )
;; ;; (add-hook 'semantic-init-hooks 'alexott/cedet-hook)
;; (add-hook 'c-mode-common-hook 'alexott/cedet-hook)
;;                                         ;(add-hook 'lisp-mode-hook 'alexott/cedet-hook)
;; ;;(add-hook 'scheme-mode-hook 'alexott/cedet-hook)
;; (add-hook 'emacs-lisp-mode-hook 'alexott/cedet-hook)
;; ;;(add-hook 'erlang-mode-hook 'alexott/cedet-hook)


;; (defun alexott/c-mode-cedet-hook ()
;;   ;;(local-set-key "\C-xt" 'ff-find-other-file)
;;   (local-set-key "\C-xt" 'eassist-switch-h-cpp)
;;   ;;(local-set-key "\C-ce" 'eassist-list-methods
;;   (local-set-key "\C-c\C-r" 'semantic-symref)

;;   (add-to-list 'ac-sources 'ac-source-gtags)
;;   )
;; (add-hook 'c-mode-common-hook 'alexott/c-mode-cedet-hook)

(when (cedet-gnu-global-version-check t)
  (semanticdb-enable-gnu-global-databases 'c-mode t)
  (semanticdb-enable-gnu-global-databases 'c++-mode t))

(when (cedet-ectag-version-check t)
  (semantic-load-enable-all-ectags-support)
  ;;(semantic-load-enable-primary-ectags-support)
  )

(when (cedet-cscope-version-check t)
  (setq ede-locate-setup-options
        '(ede-locate-cscope
          ede-locate-base))
  (semanticdb-enable-cscope-databases)
  )

;; SRecode
(global-srecode-minor-mode 1)

;; EDE
(global-ede-mode 1)
(ede-enable-generic-projects)

;; ;;; Projects

;; (ede-cpp-root-project "ystor1"
;;                       :name "YStor1"
;;                       :file "~/work/y/proj/YStor/CMakeLists.txt"
;;                       :include-path '("/YStor"
;;                                       "/YLib/include"
;;                                       "/YLib/Linux"
;;                                       )
;;                       :system-include-path '("~/work/y/proj/YStor/YLib/include"
;;                                              "~/work/y/proj/YStor/YStor"
;;                                              )
;;                       :compile-command "./gen-ystor.sh && cd _build_YStor && make && make test"
;;                       )
