(global-linum-mode t)

(require 'package) ;; You might already have this line

(package-initialize) ;; You might already have this line

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x
(global-set-key (kbd "C-x b") 'helm-mini) ;; replaces switch buffer
(setq helm-buffers-fuzzy-matching t ;; fuzzy matching
      helm-recentf-fuzzy-match    t)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(helm-mode 1)


(load-theme 'dracula t)
	
(load "auctex.el" nil t t)	
(setq TeX-auto-save t)
(setq TeX-parse-self t)

(tool-bar-mode -1) ;; remove the toolbar
