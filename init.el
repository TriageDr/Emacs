
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;;unbind alt/tab
(global-unset-key "\C-z")
(global-unset-key "\C-x\C-z")
(global-unset-key "\C-x\C-u")

(global-set-key "\M-g" 'goto-line)



(load-theme 'deeper-blue) 

(setq indent-tabs-mode nil)

(setq transient-mark-mode t)
 
(setq backup-directory-alist
      `((".*" . ,"~/emacs_save_files")))
(setq auto-save-file-name-transforms
       `((".*" ,"~/emacs_save_files" t)))

(setq auto-mode-alist (cons '("\\.ss" . scheme-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.sls" . scheme-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rkt" . scheme-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.sx" . scheme-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("last.txt" . scheme-mode) auto-mode-alist))

;;(require 'quack)

;;defun is for Emacs Lisp which Emacs is written in
(defun racket-scheme ()
  "racket-scheme"
  (interactive)
  (run-scheme "racket"))

(defun chez-scheme ()
  "chez-scheme"
  (interactive)
  (run-scheme "scheme"))

;;set hot keys for scheme/racket
(global-set-key "\C-z\C-c" 'chez-scheme)
(global-set-key "\C-z\C-v" 'racket-scheme)



(put 'cond 'scheme-indent-function 0)
(put 'pmatch 'scheme-indent-function 1)

(custom-set-variables
 '(show-paren-mode t)
 '(column-number-mode t)
 '(tool-bar-mode nil)
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight bold :height 230 :width normal)))))

