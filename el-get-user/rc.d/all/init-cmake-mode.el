;;(autoload 'cmake-mode "cmake-mode" t)
(require 'cmake-mode)

(add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . cmake-mode))
(add-to-list 'auto-mode-alist '("\\.cmake\\'" . cmake-mode))
