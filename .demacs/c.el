;; (auto-install 'auto-complete-c-headers 'yasnippet 'auto-complete 'flymake-google-cpplint 'flymake-cursor 'google-c-style 'cedet)

;; (yas-global-mode 1)

;; (defun devmario:c/c++-ac()
;;   (require 'auto-complete)
;;   (require 'auto-complete-config)
;;   (ac-config-default)
;;   (require 'auto-complete-c-headers)
;;   (add-to-list 'ac-sources 'ac-source-c-headers)

;;   (add-to-list 'achead:include-directories '"/usr/local/include")
;;   (add-to-list 'achead:include-directories '"/usr/include")
;;   )

;; (add-hook 'c-mode-hook 'devmario:c/c++-ac)
;; (add-hook 'c++-mode-hook 'devmario:c/c++-ac)


;; (defun devmario:c/c++-flymake()
;;   (require 'flymake-google-cpplint)
;;   (custom-set-variables

;;    '(flymake-google-cpplint-command "/usr/local/bin/cpplint"))
;;   (flymake-google-cpplint-load))

;; (add-hook 'c-mode-hook 'devmario:c/c++-flymake)
;; (add-hook 'c++-mode-hook 'devmario:c/c++-flymake)

;; (defun devmario:c/c++-semantic()
;;   (add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
;;   (add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
;;   (add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
;;   (add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
;;   (add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)

;;   (semantic-mode 1)
;;   (add-to-list 'ac-sources 'ac-source-semantic))
;; (add-hook 'c-mode-common-hook 'devmario:c/c++-semantic)


;; (global-ede-mode 1)
;; ;; (ede-cpp-root-project "d-gen" :file "~/" :include-path '("~/"))

