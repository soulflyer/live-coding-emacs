;; Place personal bindings here

;; Duplicate TextMate's goto line
;;("\M-l" . goto-line)
(global-set-key (kbd "M-l") 'goto-line)

;; Function to open and goto indented next line
(defun open-next-line()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(global-set-key (kbd "s-r") 'recentf-open-files)
(global-set-key (kbd "s-b") 'ibuffer)
(global-set-key (kbd "s-d") 'ido-dired)

;;
;; Put some bindings in my personal minor mode so they aren't overridden by other modes
;;

(defvar diw-minor-mode-map (make-keymap) "diw-minor-mode keymap")
(define-key diw-minor-mode-map  (kbd "C-j") 'backward-char)
(define-key diw-minor-mode-map  (kbd "C-l") 'forward-char)
(define-key diw-minor-mode-map  (kbd "C-i") 'previous-line)
(define-key diw-minor-mode-map  (kbd "C-k") 'next-line)
(define-key diw-minor-mode-map (kbd "s-<return>") 'open-next-line)

(define-minor-mode diw-minor-mode
  "A minor mode so that my key settings aren't shadowed by other major/minor modes"
  t " diw" 'diw-minor-mode-map)
