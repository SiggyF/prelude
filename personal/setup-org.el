(setq org-directory "~/src/org")
(setq org-agenda-files (list "~/src/org/projects.org"
                             "~/src/org/research.org"
                             "~/src/org/dev.org"
                             "~/src/org/notes.org"))
(setq org-default-notes-file "~/src/org/refile.org")
;; I use C-c c to start capture mode
(global-set-key (kbd "C-c c") 'org-capture)
