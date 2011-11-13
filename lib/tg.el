(require 'color-theme)
;;;###autoload
(defun color-theme-tg ()
  "Color theme by Iain Wood, created 2011-04-22."
  (interactive)
  (color-theme-install
   '(color-theme-tg
     ((background-mode . light)
      (cursor-color . "Honeydew4")
      (foreground-color . "Black")
      (background-color . "Honeydew2")
      )
     (hl-line((t (:background "Honeydew3"))))
     (region ((t (:background "#a2b6a2"))))
     (fringe ((t (:background "Honeydew2"))))
     (rainbow-delimiters-depth-1-face ((t (:foreground "purple"))))
     (rainbow-delimiters-depth-2-face ((t (:foreground "green3"))))
     (rainbow-delimiters-depth-3-face ((t (:foreground "deeppink"))))
     (rainbow-delimiters-depth-4-face ((t (:foreground "goldenrod"))))
     (rainbow-delimiters-depth-5-face ((t (:foreground "darkslategrey"))))
     (rainbow-delimiters-depth-6-face ((t (:foreground "cyan3"))))
     (rainbow-delimiters-depth-7-face ((t (:foreground "orange"))))
     (rainbow-delimiters-depth-8-face ((t (:foreground "blueviolet"))))
     (rainbow-delimiters-depth-_10-face ((t (:foreground "red"))))
     (rainbow-delimiters-depth-_11-face ((t (:foreground "deepskyblue2"))))
     (rainbow-delimiters-depth-_12-face ((t (:foreground "blue"))))
     (show-paren-match ((((class color) (background light)) (:background "honeydew1"))))
    )
  )
)


































