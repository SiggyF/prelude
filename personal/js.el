(prelude-require-packages '(
                            js2-refactor
                            tagedit
                            editorconfig
                            emmet-mode
                            ))
(require 'js2-refactor)
(require 'flycheck)
(require 'editorconfig)
;; Use lambda for anonymous functions
(font-lock-add-keywords
 'js2-mode `(("\\(function\\) *("
              (0 (progn (compose-region (match-beginning 1)
                                        (match-end 1) "\u0192")
                        nil)))))

;; Use right arrow for return in one-line functions
(font-lock-add-keywords
 'js2-mode `(("function *([^)]*) *{ *\\(return\\) "
              (0 (progn (compose-region (match-beginning 1)
                                        (match-end 1) "\u2190")
                        nil)))))
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")

(defun personal-js2-hook ()
  "extra javascript options"
  (interactive)
  (add-to-list 'flycheck-disabled-checkers 'javascript-jscs)
  (flycheck-select-checker 'javascript-eslint)
  (editorconfig-mode 1)
  )
(add-hook 'js2-mode-hook #'personal-js2-hook)
