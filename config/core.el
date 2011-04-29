;; Here is the root of your personal configs.
;; Either place config straight in here,
;; such as this colour theme (feel free to change it to your own favourite theme)

;; use blackbored colour theme
(load-file (concat dotfiles-lib-dir "tg.el"))
(color-theme-tg)

;;Or load external files such as this bindings file:
(load-dotfile "config/bindings.el")

;; Fix the rainbow delimiters
;; rainbow-delimiters is included as part of the live-config.
;; rainbow-limiters should colour () {} and [] however there appears to be a bug
;; Starting it automatically doesn't colour all the ()'s
;; rainbow-parens does colour all the ()'s, although it doesn't seem to allow
;; customisation of the colours without editing the rainbow-parens.el file
;; directly. Until this is fixed, just use both by adding rainbow-parens here..

;;(require 'rainbow-parens)
;;(add-hook 'clojure-mode-hook 'rainbow-paren-mode)

;;Make the fringes narrow
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(fringe-mode (quote (1 . 1)) nil (fringe)))

;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(95 80))
(add-to-list 'default-frame-alist '(alpha 95 80))

;;Put up the menu bar
(menu-bar-mode 1)

;;files open in new window
(setq pop-up-frames t)

;;stop emacs from shitting all over my file system
;;(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files

;;Keep a recent files list
(recentf-mode 1)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "goldenrod"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "green3"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "cyan3"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "deepskyblue2"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "blueviolet"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "magenta"))))
 '(rainbow-delimiters-depth-_10-face ((t (:foreground "deeppink"))))
 '(rainbow-delimiters-depth-_11-face ((t (:foreground "darkslategrey"))))
 '(rainbow-delimiters-depth-_12-face ((t (:foreground "blue")))))

