;; init.el --- Emacs configuration

;;;;;;;;;;;;;;;;;;;;;;;;;;begin python;;;;;;;;;;;;;;;;;;;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; 使用国内镜像
(require 'package)

; (setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
;                          ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))
; (setq package-archives '(("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;                          ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(setq package-archives '(("gnu" . "https://mirrors.163.com/elpa/gnu/")
                         ("melpa" . "https://mirrors.163.com/elpa/melpa/")))


; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
; (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
;; 配置使用代理
; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; 不加这一句可能有问题，建议读者尝试一下
; (setq url-proxy-services
;    '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
;      ("http" . "192.168.8.163:8118")
;      ("https" . "192.168.8.163:8118")))





(setq elpy-rpc-python-command "/usr/bin/python3")
(setq python-shell-interpreter "/usr/local/bin/ipython3"
    python-shell-interpreter-args "-i --simple-prompt")



(add-to-list 'load-path (expand-file-name "tyz-lisp" user-emacs-directory))



(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;; 一些准备工作
(require 'init-prepare)
;; 配置跳转
(require 'init-jump)


;; ----------优化类插件-------------------
;; ivy 类似zsh， 补全ecmas系统，部分常用命令，搜索功能
(require 'init-ivy)
;; amx 记录alx+x 输入的命令历史，将最常用的显示到最前面
(require 'init-amx)
;; ace-window ace-window 对 C-x o 重新绑定，使用时可以为每个 window 编个号，用编号进行跳转。
(require 'init-ace)
;; mwim 移动光标到代码开头或者结尾
(require 'init-mwim)
;; undo-tree 撤销重做优化
(require 'init-undo)
;; 优化底部状态栏展示主题
(require 'init-smart-mode-line)
;; 光标平滑滚动优化
(require 'init-good-scroll)
;; ----------优化类插件结束---------------



;; -------------功能增强类插件 ---------------
; which-key 按下快捷键前缀，会提示都有哪些可以按的快捷键和命令名
(require 'init-which-key)
; avy 无鼠标的快速跳转
(require 'init-avy)
; marginalia 在minibuffer添加注解
(require 'init-marginalia)
; dashboard 开始界面
(require 'init-dashboard)
; highlight-symbol  高亮跟光标符相同的符号
(require 'init-highlight-symbol)
; rainbow-delimiters 多个括号不同颜色
(require 'init-rainbow-delimiters)
; evil  支持vim命令
(require 'init-evil)
;; -------------功能增强类插件结束 -----------


;; ------------- 编程类插件 ------------------
; company-mode 安装失败company安装成功 company-box安装后不可用，应该是两个版本不对应
; (require 'init-company-mode)
; elpy 代码自动补全
; (require 'init-elpy)



;; ------------- 编程类插件结束 --------------



;; 配置jedi
(require 'init-jedi)










;;;;;;;;;;;;;;;;;;;;;;;;;;begin neotree;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "/Users/tyz/.emacs.d/emacs-plugins/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;;;;;;;;;;;;;;;;;;;;;;;;;;end neotree;;;;;;;;;;;;;;;;;;;;;;;





(provide 'init)








;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(package-selected-packages
   '(elpygen zzz-to-char lsp-ui lsp-mode exec-path-from-shell gnu-elpa-keyring-update fullframe seq ## elpy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "宋体" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
(put 'upcase-region 'disabled nil)
