(defun auto-install (&rest packages)
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

(setq package-archives
      '(("marmalade" . "https://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

(package-initialize)

(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(unless package-archive-contents
  (package-refresh-contents))

(auto-install 'load-relative)
(load-relative "./default/init.el")
(load-relative "./auto_complete.el")
(load-relative "./elisp.el")
(load-relative "./c.el")
(load-relative "./web.el")
(auto-install 'markdown-mode 'jade-mode 'lua-mode)

(load-relative "./tuhdo_c_ide/init.el")
