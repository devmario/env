(set-face-background 'highlight-current-line-face "color-16")
(add-hook 'linum-mode-hook
          (lambda ()
            (set-face-background 'linum "color-66")
            (set-face-foreground 'linum "brightblack")
            ))
