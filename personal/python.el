;;; personal-python ---  Summary:
;; Install python tools

;;; Commentary:
;; install tools


;;; Code:
(prelude-require-packages '(pyenv-mode virtualenvwrapper))
(add-hook 'prelude-python-mode-hook (lambda ()
                                      (pyenv-mode)
                                      ))
