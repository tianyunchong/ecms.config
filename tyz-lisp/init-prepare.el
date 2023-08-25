;; 设置回车为新起一行并缩进
(global-set-key (kbd "RET") 'newline-and-indent)



;; 解绑配置C-j作为前置键盘
(global-set-key (kbd "C-j") nil)
;; 删去光标所在行（在图形界面时可以用 "C-S-<DEL>"，终端常会拦截这个按法)
(global-set-key (kbd "C-j C-k") 'kill-whole-line)



(provide 'init-prepare)