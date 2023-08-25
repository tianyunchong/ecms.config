;; 启用Jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)


;; 配置Jedi的Python解释器路径
(setq python-shell-interpreter "/usr/bin/python3")

;; 启用自动补全
(autoload 'jedi:setup "jedi" nil t)
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)


(provide 'init-jedi)