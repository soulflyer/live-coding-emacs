;; Here is the root of your personal configs.
;; Either place config straight in here,
;; such as this colour theme (feel free to change it to your own favourite theme)

;; use blackbored colour theme
(load-file (concat dotfiles-lib-dir "tg.el"))
(color-theme-tg)

;;Or load external files such as this bindings file:
(load-dotfile "config/bindings.el")

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
