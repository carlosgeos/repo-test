;;; general-settings.el --- some general stuff for Emacs
;;; Commentary:


;;; Code:

;; no startup message
(setq inhibit-startup-message t)

;; y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; no scroll bar
(scroll-bar-mode -1)

;; use arrows to move around split windows.
(windmove-default-keybindings)

;; no tool bar
(tool-bar-mode nil)

;; show the current line and column numbers in the stats bar as well
(line-number-mode t)
(column-number-mode t)

;; no dups in search history or minibuffer
(setq history-delete-duplicates t)

;; "normal" text editor behaviour
(delete-selection-mode t)

;; electric brackets pair mode
(add-hook 'prog-mode-hook #'electric-pair-mode)

;; different indentation for c code
(setq-default c-basic-offset 4)

;; solves some problems with python shell and accents
;; (setenv "LC_CTYPE" "UTF-8")

;; Backup files (~file) in one directory. These files are created
;; after saving a new version of a file. Made redundant by VCS
(setq backup-directory-alist '(("." . "~/.backupsEmacs")))

;; Autosave files also in a special folder. These files are created
;; continuously for modified buffers and are deleted when the buffer
;; is saved to a file.
(defvar autosave-dir (expand-file-name "~/.autosavesEmacs/"))
(make-directory autosave-dir t)
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))

; set command key to be meta instead of option
(if (system-is-mac)
    (setq ns-command-modifier 'meta))

(provide 'general-settings)
;;; general-settings.el ends here
