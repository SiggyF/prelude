;; These are also fortran files
(add-to-list 'auto-mode-alist '("\\.ftn" . f90-mode))
(add-to-list 'auto-mode-alist '("\\.F90" . f90-mode))

;; markdown
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; matlab
(add-to-list 'auto-mode-alist '("\\.m\\'" . matlab-mode))

;; we don't use web-mode, but html-mode and emmet
(add-to-list 'auto-mode-alist '("\\.html?\\'" . html-mode))

;; vue templates
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
