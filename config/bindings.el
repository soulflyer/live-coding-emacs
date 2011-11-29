;; Place personal bindings here

;; Duplicate TextMate's goto line
;;("\M-l" . goto-line)
(global-set-key (kbd "M-l") 'goto-line)

;;(global-set-key (kbd "<C-tab>") 'bury-buffer)
;;(global-set-key (kbd "<C-S-tab>") 'unbury-buffer)
;;(global-set-key (kbd "<C-tab>") 'iflipb-next-buffer)
;;(global-set-key (kbd "<C-S-tab>") 'iflipb-previous-buffer)
(global-set-key (kbd "<C-tab>") 'swbuff-switch-to-next-buffer)
(global-set-key (kbd "<C-S-tab>") 'swbuff-switch-to-previous-buffer)


;; Function to open and goto indented next line
(defun open-next-line()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))


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
(define-key diw-minor-mode-map  (kbd "M-[") 'paredit-backward-slurp-sexp)
(define-key diw-minor-mode-map  (kbd "M-]") 'paredit-backward-barf-sexp)
(define-key diw-minor-mode-map  (kbd "M-{") 'paredit-forward-barf-sexp)
(define-key diw-minor-mode-map  (kbd "M-}") 'paredit-forward-slurp-sexp)
(define-key diw-minor-mode-map  (kbd "M-)") 'paredit-splice-sexp)
(define-key diw-minor-mode-map  (kbd "M-(") 'paredit-wrap-round)
(define-key diw-minor-mode-map  (kbd "C-x k") 'kill-this-buffer)
(define-key diw-minor-mode-map  (kbd "s-w") 'delete-frame)
(define-key diw-minor-mode-map  (kbd "C-j") 'eval-print-last-sexp)
(define-key diw-minor-mode-map  (kbd "s-o") 'ido-find-file)
(define-key diw-minor-mode-map  (kbd "C-x SPC") 'cua-set-mark)
(define-key diw-minor-mode-map  (kbd "C-x C-d") 'ido-dired)
(define-key diw-minor-mode-map  (kbd "C-x C-b") 'ibuffer)
(define-key diw-minor-mode-map  (kbd "C-x C-r") 'recentf-open-files)
(define-key diw-minor-mode-map  (kbd "C-x w") 'delete-window)
(define-minor-mode diw-minor-mode
  "A minor mode so that my key settings aren't shadowed by other major/minor modes"
  t " diw" 'diw-minor-mode-map)














































