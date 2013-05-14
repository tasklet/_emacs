(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


(ns-toggle-toolbar)
(set-default-font "Monaco-14")
(add-to-list 'load-path
         "~/site-lisp")

(add-to-list 'load-path
         "~/site-lisp/color-theme")
(require 'color-theme)

(color-theme-initialize)
;;(color-theme-classic)
(require 'php-mode)
(require 'sweyla897401)
(sweyla897401)

(add-to-list 'load-path
              "~/site-lisp/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(yas/minor-mode-on)

(add-to-list 'load-path "~/site-lisp/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/site-lisp//ac-dict")
(ac-config-default)
(setq ac-auto-start 2)

(defun toggle-fullscreen ()
  "Toggle full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))

(defun ns-toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen 'fullboth))

(global-set-key [f10] 'ns-toggle-fullscreen)
(require 'nodejs-mode)
(require 'coffee-mode)
(require 'psvn)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(setq todo-file-do "~/todo/do") 
(setq todo-file-done "~/todo/done") 
(setq todo-file-top "~/todo/top") 
(put 'upcase-region 'disabled nil)
