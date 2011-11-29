;; Here is the root of your personal configs.
;; Either place config straight in here,

;; (server-start)

(set-keyboard-coding-system nil)

;; Different stuff for Emacs and emacs
(if (string= (invocation-name) "Emacs")
    ;; stuff for mac Emacs goes here
    (progn (load-file (concat dotfiles-lib-dir "tg.el"))
                (color-theme-tg)
                (menu-bar-mode 1)
                (scroll-bar-mode 1))
  ;; stuff for command line emacs goes here
  (progn (load-file (concat dotfiles-lib-dir "blackbored.el"))
                 (color-theme-blackbored)
)
)


;;Or load external files such as this bindings file:
(load-dotfile "config/bindings.el")
(server-mode 1)
(visual-line-mode)
;; Fix the rainbow delimiters
;; rainbow-delimiters is included as part of the live-config.
;; rainbow-limiters should colour () {} and [] however there appears to be a bug
;; Starting it automatically doesn't colour all the ()'s
;; rainbow-parens does colour all the ()'s, although it doesn't seem to allow
;; customisation of the colours without editing the rainbow-parens.el file
;; directly. Until this is fixed, just use both by adding rainbow-parens here..

;;(require 'rainbow-parens)
;;(add-hook 'clojure-mode-hook 'rainbow-paren-mode)

(defun djcb-zoom (n)
  "with positive N, increase the font size, otherwise decrease it"
  (set-face-attribute 'default (selected-frame) :height
                      (+ (face-attribute 'default :height) (* (if (> n 0) 1 -1) 10))))

;;Make the fringes narrow
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(fringe-mode (quote (1 . 1)) nil (fringe))
)

;;(setq fringe-style "none")

(setq-default  cursor-type 'bar)
(setq show-paren-style (quote expression))
;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(95 80))
(add-to-list 'default-frame-alist '(alpha 95 80))


;; Sensible ctrl-tab and shift-ctrl-tab cycling
(require 'swbuff-x)
(setq swbuff-display-intermediate-buffers t)
(setq swbuff-clear-delay 1)

;;files open in new window
;;(setq pop-up-frames t)

;;stop emacs from shitting all over my file system
;;(setq make-backup-files nil) ; stop creating those backup~ files
;;(setq auto-save-default nil) ; stop creating those #autosave# files

;;Keep a recent files list
(recentf-mode 1)

(defadvice kill-ring-save (before slick-copy activate compile)
  "When called interactively with no active region, copy a single line instead."
  (interactive
   (if mark-active
       (list (region-beginning) (region-end))
       (message "Copied line")
       (list (line-beginning-position) (line-beginning-position 2)))))

