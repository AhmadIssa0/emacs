(global-linum-mode t) ;; Show line numbers

(require 'package)
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

; list the packages you want
(setq package-list '(ensime 
                     helm 
                     auctex 
                     auctex-latexmk 
                     dracula-theme))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

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
