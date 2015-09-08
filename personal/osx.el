;; Set gls as default ls (for --dired)
(setq is-mac (equal system-type 'darwin))
(when is-mac
  (setq ls-lisp-use-insert-directory-program t)
  (setq insert-directory-program "gls")
  )
