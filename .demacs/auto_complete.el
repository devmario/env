(auto-install 'auto-complete)

(require 'auto-complete-config)
(ac-config-default)
(ac-linum-workaround)
(setq ac-stop-flymake-on-completing t)
(setq ac-use-quick-help t)
(ac-syntax-checker-workaround)
(setq ac-auto-show-menu 0.1)
(setq ac-quick-help-delay 0.1)
(setq ac-auto-start 1)

(global-auto-complete-mode t)
