;; Place personal bindings here

;; Duplicate TextMate's goto line
;;("\M-l" . goto-line)
(global-set-key (kbd "M-l") 'goto-line)

;;(global-set-key (kbd "<C-tab>") 'bury-buffer)
;;(global-set-key (kbd "<C-S-tab>") 'unbury-buffer)
;;(global-set-key (kbd "<C-tab>") 'iflipb-next-buffer)
;;(global-set-key (kbd "<C-S-tab>") 'iflipb-previous-buffer)
(global-set-key (kbd "<C-tab>") 'swbuff-switch-to-next-buffer)
(global-set-key (kbd "<C-S-tab>") 'cycbuf-switch-to-previous-buffer)


;; Function to open and goto indented next line
(defun open-next-line()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(global-set-key (kbd "s-r") 'recentf-open-files)
(global-set-key (kbd "s-b") 'ibuffer)
(global-set-key (kbd "s-d") 'ido-dired)
(global-set-key (kbd "C-=")      '(lambda nil (interactive) (djcb-zoom 5)))
(global-set-key (kbd "C--")      '(lambda nil (interactive) (djcb-zoom -5)))

(define-key slime-repl-mode-map (kbd "<up>") 'slime-repl-backward-input)
(define-key slime-repl-mode-map (kbd "<down>") 'slime-repl-next-input)

;;
;; Put some bindings in my personal minor mode so
;; they aren't overridden by other modes
;;

(defvar diw-minor-mode-map (make-keymap) "diw-minor-mode keymap")
;;(define-key diw-minor-mode-map  (kbd "C-j") 'backward-char)
;;(define-key diw-minor-mode-map  (kbd "C-l") 'forward-char)
;;(define-key diw-minor-mode-map  (kbd "C-i") 'previous-line)
;;(define-key diw-minor-mode-map  (kbd "C-k") 'next-line)
(define-key diw-minor-mode-map  (kbd "C-c C-k") 'slime-eval-buffer)
(define-key diw-minor-mode-map  (kbd "s-<return>") 'open-next-line)
(define-key diw-minor-mode-map  (kbd "s-<backspace>") 'kill-whole-line)
(define-key diw-minor-mode-map  (kbd "s-[") 'paredit-backward-slurp-sexp)
(define-key diw-minor-mode-map  (kbd "s-]") 'paredit-backward-barf-sexp)
(define-key diw-minor-mode-map  (kbd "s-]") 'paredit-forward-barf-sexp)
(define-key diw-minor-mode-map  (kbd "s-{") 'paredit-forward-slurp-sexp)
(define-key diw-minor-mode-map  (kbd "C-w") 'ido-kill-buffer)

(define-minor-mode diw-minor-mode
  "A minor mode so that my key settings aren't shadowed by other major/minor modes"
  t " diw" 'diw-minor-mode-map)














































