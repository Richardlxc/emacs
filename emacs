;;Time-stamp: <2012-06-01 20:28:15 Richard>
(add-to-list 'load-path "~/.emacs.d/plugins/") 
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-wget") 
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-jabber") 
(add-to-list 'load-path "~/.emacs.d/plugins/twittering-mode") 
(add-to-list 'load-path "~/.emacs.d/plugins/configs") 
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-jabber") 
(add-to-list 'load-path "~/.emacs.d/plugins/ess/lisp/ess-site")
;(defun open-setting-file()
;  (interactive)
;  (find-file "~/.emacs"))
;
;;; ====================      line number      ====================
;;; 调用linum.el(line number)来显示行号：
(require 'w3m-extension)
(require 'basic-edit-toolkit)
(require 'move-text)
(move-text-default-bindings)
;;(require 'xml-weather)
(require 'pdftools)
(require 'alarm)
(require 'rect-mark)
(require 'screencast)
(require 'mon-rename-image-utils)
(require 'css-color)
(require 'find-dired+)
(require 'find-dired-)
(require 'paste2)
(require 'oicq)
(require 'festival)
(require 'anything-irfc)
(require 'anything)
(setq irfc-directory "~/irfc")
(setq irfc-assoc-mode t)
(require 'recentf-ext)
(require 'cal-china-x)
(setq mark-holidays-in-calendar t)
(setq cal-china-x-priority1-holidays cal-china-x-chinese-holidays)
(setq calendar-holidays cal-china-x-priority1-holidays)
;;(require 'eimp)
(require 'chm-view)
(require 'newsticker-notify)
(require 'iman)
(require 'rcirc-sound)
;;(require 'erc-babel)
(require 'asciidoc)
(require 'dim-google)
;;(require 'google)
(require 'json)
(require 'mojo)
(require 'linum)
(global-linum-mode t)
;;;写博客
;;上twitter 和 weibo
(require 'twittering-mode)
;;避免每次都需要输入密码 (需要安装 gpg )

(setq twittering-use-master-password t)

;;一些网站（如 sina）不喜欢 SSL.

(setq twittering-allow-insecure-server-cert t)
(setq twittering-oauth-use-ssl nil)
(setq twittering-use-ssl nil)

;;状态栏上显示未读推数；显示头像

(twittering-enable-unread-status-notifier)
(setq-default twittering-icon-mode t)

;;启动时默认打开的 timeline.

(setq twittering-initial-timeline-spec-string '(":home@sina"  ))
;; --------------------      End         --------------------

;;======================    time setting        =====================
;;启用时间显示设置，在minibuffer上面的那个杠上（忘了叫什么来着）
(display-time-mode 1)

;;时间使用24小时制
(setq display-time-24hr-format t)

;;时间显示包括日期和具体时间
(setq display-time-day-and-date t)

;;时间栏旁边启用邮件设置
;(setq display-time-use-mail-icon t)

;;时间的变化频率
(setq display-time-interval 10)

;;显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t) 
;;----------------------    END    time setting    ---------------------

;; ====================recent-jump ====================
;; set recent-jump
(setq recent-jump-threshold 4)
(setq recent-jump-ring-length 10)
(global-set-key (kbd "C-o") 'recent-jump-jump-backward)
(global-set-key (kbd "M-o") 'recent-jump-jump-forward)
(require 'recent-jump)
(require 'w3m-load)
(require 'mime-w3m)

(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(global-set-key "\C-xm" 'browse-url-at-point)
(setq w3m-use-cookies t)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-default-display-inline-image t)
(setq w3m-default-toggle-inline-images t)
;;(require 'ibus) 
;;(add-hook 'after-init-hook 'ibus-mode-on)

;;
;;(if (and (fboundp 'daemonp) (daemonp))
;;  (add-hook 'after-make-frame-functions
;;            (lambda (frame)
;;              (with-selected-frame frame
;;                                   (set-fontset-font "fontset-default"
;;                                                     'chinese-gbk "WenQuanYi Micro Hei Mono 12"))))
;;  (set-fontset-font "fontset-default" 'chinese-gbk "WenQuanYi Micro Hei Mono 12"))

;;设置句尾
;;(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
;; 
;; ;;直接打开图片
(auto-image-file-mode)
;;  
(global-set-key (kbd "C-x f") 'find-file)
;;  ;; take the place of C-x C-f
;;  ;; 当你输入了一些字符后，系统会自动帮你补全；
;;  ;; C-s(next)或是C-r(previous)用来在列表中循环；
;;  ;; 按[Tab]键会自动列出可能的补全方法；
;;  ;; 用C-x C-d直接打开当前目录的Dired浏览模式；
(require 'ido)
(ido-mode t)
;;   
;;   ;; 去掉滚动栏
(scroll-bar-mode nil)
;;    
;;    ;; 一打开就起用 text 模式。
(setq default-major-mode 'text-mode)
;;     
;;     ;; 语法高亮
(global-font-lock-mode t)

;;禁用启动信息
(setq inhibit-startup-message t)
;;; 
;;; ;; 回车缩进
(global-set-key "\C-m" 'newline-and-indent)
;;(global-set-key (kbd "C-") 'newline)
;;;  
;;;  ;; 显示括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)
(require 'highlight-parentheses)
(highlight-parentheses-mode 1)
;;;   
;;;   ;; 显示ascii表
(autoload 'ascii-table "ascii-table" "Show ASCII table." t)
(require 'ascii)

;;用一个很大的 kill ring. 这样防止我不小心删掉重要的东西。
(setq kill-ring-max 200)
;;支持emacs和外部程序的拷贝粘贴
(setq x-select-enable-clipboard t)
;; 
;; ;;在标题栏提示当前位置
(setq frame-title-format "Richard@%b")
;;comment
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c b") 'comment-box)
(global-set-key (kbd "C-c k") 'comment-kill)
;;doxgen
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0/")
(require 'color-theme)
(load-file "~/.emacs.d/plugins/color-theme-6.6.0/themes/color-theme-library.el")
(setq evil-want-C-i-jump t)
(setq evil-want-C-u-scroll t)

(add-to-list 'load-path "~/.emacs.d/plugins/evil")
(require 'evil)
(evil-mode 1)
(require 'surround)
(global-surround-mode 1)
;;global set key
(define-key evil-normal-state-map ",i" 'ibuffer)
(define-key evil-normal-state-map ",bs" 'ido-switch-buffer)
(define-key evil-normal-state-map ",bd" 'kill-this-buffer)
(define-key evil-normal-state-map ",m" 'magit-status)
(define-key evil-normal-state-map ",w" 'save-buffer)
(define-key evil-normal-state-map "ZZ" (kbd "C-c C-c"))
(require 'undo-tree)

(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/ac-dict/")
(require 'auto-complete-clang)

(setq ac-auto-start 1)
(setq ac-quick-help-delay 0.5)
;; (ac-set-trigger-key "TAB")
(define-key ac-mode-map [(control tab)] 'auto-complete)
(setq compilation-read-command nil) ;don't prompt to press ENTER
(global-set-key [(f7)] (lambda()
                         (interactive)
                         (save-some-buffers t)     ;save all buffers
                         (compile compile-command) ;compile
                         ))

(global-set-key [f4] 'eshell)
(global-set-key [(shift f4)] 'shell)

;定制C/C++缩进风格
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "k&r")))
(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")))
;                                               
;; 设置缩进字符数
(setq c-basic-offset 4)

(global-set-key [(f5)] 'speedbar)

(add-to-list 'load-path "~/.emacs.d/plugins/git-emacs/")
(require 'git-emacs)
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-w3m-1.4.4")
(require 'w3m-e21)
(provide 'w3m-e23)
(setq w3m-default-display-inline-images t)

;;按键C-c e o可以自动播放了,再按C-c e l可以列出播放列表

;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/emms")     ;;; emms目录
;;(add-to-list 'exec-path "/usr/bin/mplayer/")                ;;;mplayer目录
;;(require 'emms-setup)
;;(emms-devel)
;;;; players
;;(setq emms-player-mpg321-command-name "mpg123"
;;      emms-player-mplayer-command-name "mplayer"
;;      emms-player-list '(emms-player-mplayer
;;                          emms-player-mplayer-playlist
;;                          emms-player-ogg123
;;                          emms-player-mpg321))
;;;; Show the current track each time EMMS
;;;; starts to play a track with "播放 : "
;;(add-hook 'emms-player-started-hook 'emms-show)
;;(setq emms-show-format "播放: %s")
;;;; When asked for emms-play-directory,
;;;; always start from this 默认的播放目录
;;(setq emms-source-file-default-directory "/home/richard/gmbox_download")
;;(setq emms-playlist-buffer-name "音乐")
;;
;;;;;emms快捷键设置
;;(global-set-key (kbd "C-c e l") 'emms-playlist-mode-go)
;;(global-set-key (kbd "C-c e s") 'emms-start)
;;(global-set-key (kbd "C-c e e") 'emms-stop)
;;(global-set-key (kbd "C-c e n") 'emms-next)
;;(global-set-key (kbd "C-c e p") 'emms-pause)
;;(global-set-key (kbd "C-c e f") 'emms-play-playlist)
;;(global-set-key (kbd "C-c e o") 'emms-play-file)
;;(global-set-key (kbd "C-c e d") 'emms-play-directory-tree)
;;(global-set-key (kbd "C-c e a") 'emms-add-directory-tree)
(set-fontset-font "fontset-default"
                  'gb18030 '("Microsoft YaHei" . "unicode-bmp"))
(add-to-list 'load-path "/usr/share/emacs/site-lisp") ;;

(setq default-major-mode 'text-mode);;一打开就起用 text 模式。
(global-font-lock-mode t);;语法高亮
(auto-image-file-mode t);;打开图片显示功能
(fset 'yes-or-no-p 'y-or-n-p);;以 y/n代表 yes/no，可能你觉得不需要，呵呵。
(column-number-mode t);;显示列号
(show-paren-mode t);;显示括号匹配
(display-time-mode 1);;显示时间，格式如下
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(tool-bar-mode nil);;去掉那个大大的工具栏
(scroll-bar-mode nil);;去掉滚动条，因为可以使用鼠标滚轮了 ^_^
(mouse-avoidance-mode 'animate);;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。很好玩阿，这个功能
(setq mouse-yank-at-point t);;支持中键粘贴
(transient-mark-mode t);;这个忘了，郁闷！
(setq x-select-enable-clipboard t);;支持emacs和外部程序的粘贴
(setq default-fill-column 80);;默认显示 80列就换行 
(defun ascii-table ()
  "Display basic ASCII table (0 thru 128)."
  (interactive)
  (setq buffer-read-only nil)        ;; Not need to edit the content, just read mode (added)
  (local-set-key "q" 'bury-buffer)   ;; Nice to have the option to bury the buffer (added)
  (switch-to-buffer "*ASCII*")
  (erase-buffer)
  (save-excursion (let ((i -1))
                    (insert "ASCII characters 0 thru 127.\n\n")
                    (insert " Hex  Dec  Char|  Hex  Dec  Char|  Hex  Dec  Char|  Hex  Dec  Char\n")
                    (while (< i 31)
                           (insert (format "%4x %4d %4s | %4x %4d %4s | %4x %4d %4s | %4x %4d %4s\n"
                                           (setq i (+ 1  i)) i (single-key-description i)
                                           (setq i (+ 32 i)) i (single-key-description i)
                                           (setq i (+ 32 i)) i (single-key-description i)
                                           (setq i (+ 32 i)) i (single-key-description i)))
                           (setq i (- i 96))))))







(global-set-key [f11] 'my-fullscreen)
(defun my-fullscreen ()
  (interactive)
  (x-send-client-message
    nil 0 nil "_NET_WM_STATE" 32
    '(2 "_NET_WM_STATE_FULLSCREEN" 0))
  )



(setq evernote-enml-formatter-command '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8")) 
(add-to-list 'load-path "<your load path>")
;;(require 'evernote-mode)
;;(global-set-key (kbd"\C-c g c") 'evernote-create-note)
;;(global-set-key (kbd"\C-c g o") 'evernote-open-note)
;;(global-set-key (kbd"\C-c g s") 'evernote-search-notes)
;;(global-set-key (kbd"\C-c g S") 'evernote-do-saved-search)
;;(global-set-key (kbd"\C-c g w") 'evernote-write-note)
;;(global-set-key (kbd"\C-c g p") 'evernote-post-region)
;;(global-set-key (kbd"\C-c g b") 'evernote-browser)


(add-hook 'kill-buffer-hook 'make-w3m-backup-copy)

(defun make-w3m-backup-copy ()
  (when (string-match "^w3m" (buffer-name))
    (write-file (concat (buffer-file-name) ".last"))))

;;emacs-wget下载
(autoload 'wget "wget" "wget interface for Emacs." t)
(autoload 'wget-web-page "wget" "wget interface to download whole web page." t)
(load "w3m-wget")
;; erc configuration
(require 'erc)
(setq erc-server "irc.freenode.net"
      erc-port 6667
      erc-nick "richardlxc"
      erc-user-full-name "richardlxc"
      erc-prompt-for-password nil)     

(setq erc-default-coding-system '(utf-8 . utf-8))
(erc-match-mode 1)
(setq erc-keywords '("fifar"))
(setq erc-pals '("joe" "jim" "jane" "jack"))

(erc-timestamp-mode 1)
(setq erc-insert-timestamp-function 'erc-insert-timestamp-left)
(setq erc-current-nick-highlight-type 'nick)

(require 'erc-log)
(erc-log-mode 1)
(setq erc-log-channels-directory "~/logs/"
      erc-save-buffer-on-part t
      erc-log-file-coding-system 'utf-8
      erc-log-write-after-send t
      erc-log-write-after-insert t)

(unless (file-exists-p erc-log-channels-directory)
  (mkdir erc-log-channels-directory t))

;; erc page-me
(defvar my-erc-page-message "%s is calling your name."
  "Format of message to display in dialog box")

(defvar my-erc-page-nick-alist nil
  "Alist of nicks and the last time they tried to trigger a
  notification")

(defvar my-erc-page-timeout 30
  "Number of seconds that must elapse between notifications from
  the same person.")

(defun my-erc-page-me (match-type nick message)
  "Notify the current user when someone sends a message that
  matches a regexp in `erc-keywords'."
  (interactive)
  (when (and (eq match-type 'keyword)
             ;; I don't want to see anything from the erc server
             (null (string-match "^[sS]erver" nick))
             ;; or bots
             (null (string-match "bot!" nick))
             ;; or from those who abuse the system
             (let ((cur-time (float-time))
                   (cur-assoc (assoc nick my-erc-page-nick-alist))
                   (last-time))
               (if cur-assoc
                 (progn
                   (setq last-time (cdr cur-assoc))
                   (setcdr cur-assoc cur-time)
                   ;; attempts by a particular nick must be more
                   ;; than `my-erc-page-timeout' seconds apart
                   (> (abs (- cur-time last-time))
                      my-erc-page-timeout))
                 (progn
                   (push (cons nick cur-time)
                         my-erc-page-nick-alist)
                   t))))
    (start-process "page-me" nil "zenity"
                   "--notification" "--text"
                   (format my-erc-page-message nick)
                   "--timeout" "1" ";emacs")
    )
  )
(add-hook 'erc-text-matched-hook 'my-erc-page-me)



(setq org-ditaa-jar-path "~/.emacs.d/plugins/ditaa.jar")
(require 'weblogger)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(weblogger-config-alist (quote (("default" ("user" . "richardlxc") ("server-url" . "http://1.richardsae.sinaapp.com/xmlrpc.php") ("weblog" . "1"))))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;;****************************************************************
;;tramp mode "ssh"
;;(setq tramp-default-method "ssh")
(require 'tramp)
(cond
 ((eq system-type 'windows-nt)
  (setq tramp-default-method "pscp"))
 ((eq system-type 'gnu/linux)
  (setq tramp-default-method "ssh")))


;;****************************************************************

;;keisen-mode
(if window-system
    (autoload 'keisen-mode "keisen-mouse" "MULE table" t)
  (autoload 'keisen-mode "keisen-mule" "MULE table" t))


(setq erc-hide-list '(  "JOIN"  "PART" "QUIT"))

;;set the background colors 
(setq default-frame-alist '((background-color . "black")(foreground-color . "white") (cursor-color . "white")))
 (setq frame-background-mode 'dark)

(setq erc-autojoin-channels-alist '(("c1" "c2")))

;;ctrl-tab to switch windows
 (require 'wcy-swbuff)
;; then you can use <C-tab> and <C-S-kp-tab> to switch buffer.
 (global-set-key (kbd "<C-tab>") 'wcy-switch-buffer-forward)


;;Emacs 的其他编辑技巧
;;数字增减和循环改变文字
;;智能标记
;;align-regexp
;;C-w 的绑定
;;数字增减和循环改变文字

;; 下面的几个函数可以实现自动增加数字，和循环改变文本的功能。定义方法是
;; 1. 一个 (regexp . (lambda () ....) 的方式。 下面的第一个定义就提供了自动增加
;; 和减少数字的功能。
;; 2. 一个含有字符串的 list ， 那么就会在这些字符串中循环选择。
;; M-x wcy-rotate-text 可以接受 C-u 的参数，负数表示减少数字或者反向循环。
;; 参数的大小可以指定增加或者减少多少，或者循环的步长。

(defvar wcy-rotate-text-definations
  '(("-?[0-9]+" . (lambda ()
                    (format "%d" (+ rotate-arg (string-to-number (match-string 0))))))
    ("zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine")
    ("Sunday"  "Monday"   "Tuesday"   "Wednesday"   "Thursday"   "Friday"
     "Saturday")
    )
  "
a list of ROT text defination. each element is a defination.
element can be a list of string.
element can be a cons. (REGEXP . func)
if REGEXP matched, func is called with no args, return value is the next value.
")

(defun wcy-rotate-text-aux ()
  (catch 'break
    (mapc
     #'(lambda (def)
         (let ((regexp (if (functionp (cdr def))
                           (car def)
                         (mapconcat 'regexp-quote def "\\|")))
               (func (if (functionp (cdr def))
                         (cdr def)
                       #'(lambda ()
                           (let* ((l (length def))
                                  (r (length (member (match-string 0) def)))
                                  (i (% (+ rotate-arg (- l r)) l)))
                             (format "%s" (nth i def)))))))
           (if (re-search-forward regexp (line-end-position) t nil)
               (throw 'break (funcall func)))))
     wcy-rotate-text-definations)
    nil))
(defun wcy-rotate-text(rotate-arg)
  (interactive "p")
  (let ((x (wcy-rotate-text-aux)))
    (when x
      (replace-match x)
      (goto-char (match-beginning 0)))))
;;智能标记

;;这个功能绑定在 C-3 上。这个功能就是根据光标的所在位置，智能的选择一块区域，也就
;;是设置成为当前的 point 和 mark。这样就可以方便的拷贝或者剪切，或者交换他们的位
;;置。

;;如果当前光标在一个单词上，那么区域就是这个单词的开始和结尾分别。
;;如果当前光标在一个连字符上，那么就选择包含连字符的一个标识符。

;;这个两个的是有区别的，而且根据不同的 mode 的语法定义，连字符和单词的定义也不一样。
;;例如 C mode 下， abc_def_xxx , 如果光标停在 abc 上，那么就会选择 abc 这个单词。 如果
;;停在下划线上，那么就会选择 abc_def_xxx 。

;;如果当前光标在一个双引号,单引号，一个花括号，方括号，圆括号，小于号，或者大于号，
;;等等，那么就会选择他们对应的另一个括号之间的区域。 引号中的 escape 字符也是可以
;;自动识别的。嵌套关系也是可以识别的。这一点可以和 VIM 中的 % 的功能类比。

(defun wcy-mark-some-thing-at-point()
  (interactive)
  (let* ((from (point))
         (a (mouse-start-end from from 1))
         (start (car a))
         (end (cadr a))
         (goto-point (if (= from start )
                            end
                       start)))
    (if (eq last-command 'wcy-mark-some-thing-at-point)
        (progn
          ;; exchange mark and point
          (goto-char (mark-marker))
          (set-marker (mark-marker) from))
      (push-mark (if (= goto-point start) end start) nil t)
      (when (and (interactive-p) (null transient-mark-mode))
        (goto-char (mark-marker))
        (sit-for 0 500 nil))
      (goto-char goto-point))))
(define-key global-map (kbd "C-3") 'wcy-mark-some-thing-at-point)
(define-key global-map (kbd "M-C-SPC") 'wcy-mark-some-thing-at-point)

;;align-regexp

;;M-x align-regexp 可以方便的对齐一些文字。 例如
;;
;;    Fred (123) 456-7890
;;    Alice (123) 456-7890
;;    Mary-Anne (123) 456-7890
;;    Joe (123) 456-7890
;;选择这段文字之后， M-x align-regexp ，然后根据提示输入， ``('' 这样就可以得到下 面的结果:
;;
;;    Fred      (123) 456-7890
;;    Alice     (123) 456-7890
;;    Mary-Anne (123) 456-7890
;;    Joe       (123) 456-7890
;;C-w 的绑定
;;
;;我把 C-w 绑定 backward-kill-word， 这样就和 bash 的 input-line 是一致的了。我试 了试，还挺好用。但是原来的 C-w 是和 kill-region 绑定的。改变习惯还是很难的。以前 我不喜欢 transient-mark-mode ，但是现在发现她可以派上用场了。可以在激活选择区域 的时候，C-w 和 kill-region 绑定，否则和 backward-kill-word 绑定，感觉不错。

(defmacro wcy-define-2bind-transient-mode (funname cmd-mark-active
                                                   cmd-mark-no-active)
  `(defun ,funname ()
     (interactive)
     (if mark-active
         (call-interactively ,cmd-mark-active)
       (call-interactively ,cmd-mark-no-active))))
;; 和 bash 中的类似的快键，不用再按 backspace 了。
(global-set-key "\C-w"     'wcy-backward-kill-word-or-kill-region)
(wcy-define-2bind-transient-mode
 wcy-backward-kill-word-or-kill-region
 'kill-region
 'backward-kill-word)




(global-hl-line-mode 1)
;;自带的高亮配色颜色是固定的，不能和所有的配色方案协 调一致。用下面的办法可以让高亮的颜色自动和当前的配 色方案配合。

;;(require 'hl-line)
;;;;(hl-line-mode -1)
;;;;(global-hl-line-mode -1)
;;;; for hight line mode
;;(or (facep 'my-hl-line-face) (make-face 'my-hl-line-face))
;;(setq hl-line-face 'my-hl-line-face)
;;(face-spec-set 'my-hl-line-face '((t (
;;                                      :background "DodgerBlue3"
;;                                                  ;;:bold
;;                                                  ;;:weight nil
;;                                      :inverse-video nil
;;                                      ))))
;;(defun wcy-color-theme-adjust-hl-mode-face()
;;  "interactive"
;;  (let* ((color  (x-color-values (face-attribute 'default :background))))
;;    (if (null color)
;;        (error "not support.")
;;      (let ((my-color (mapcar
;;                       (lambda (x)
;;                         (let ((y (/ #XFFFF 4))
;;                               (delta #X18FF))
;;                           (cond
;;                            ((< x (* y 1))
;;                             (+ x delta))
;;                            ((< x (* y 2))
;;                             (+ x delta))
;;                            ((< x (* y 3))
;;                             (- x delta))
;;                            (t
;;                             (- x delta)))))
;;                       color)))
;;        (message "%S %S" color my-color)
;;        (set-face-attribute
;;         'my-hl-line-face nil
;;         :background
;;         (concat "#"
;;                 (mapconcat
;;                  (lambda (c) (format "%04X" c))
;;                  my-color
;;                  "")))))))
;;(wcy-color-theme-adjust-hl-mode-face)

;;在window caption 和mode line 上显示有用信息
;; 我经常用不同的用户名称，在不同的主机上运行
;; emacs , 下面的代码可以在frame title 上
;; 区分不同的主机和用户名称。
;;list 用法
(setq frame-title-format '((:eval (getenv-internal "LOGNAME")) ;;显示登陆名称
                           "@"
                           (:eval (system-name));;显示主机名称
                           ":"
                           (:eval (or (buffer-file-name) (buffer-name)))
                           ))
;;string
(setq x mode-line-format)
(setq mode-line-format (cons "%*abc" mode-line-format))
(setq mode-line-format x)

;;Emacs 中 shell 结束之后，自动关闭 shell buffer
(add-hook 'shell-mode-hook 'wcy-shell-mode-hook-func)
(defun wcy-shell-mode-hook-func  ()
  (set-process-sentinel (get-buffer-process (current-buffer))
                            #'wcy-shell-mode-kill-buffer-on-exit)
      )
(defun wcy-shell-mode-kill-buffer-on-exit (process state)
  (message "%s" state)
  (if (or
       (string-match "exited abnormally with code.*" state)
       (string-match "finished" state))
      (kill-buffer (current-buffer))))

;;skeleton 和 abbrev 配合使用的技巧
(define-skeleton skeleton-c-mode-main-func
  "generate int main(int argc, char * argc[]) automatic" nil
  "int main (int argc, char * argc[]) \n{\n"
  > _  "\n" > "return 0;"
  "\n}")
(define-abbrev-table 'c-mode-abbrev-table '(
    ("main" "" skeleton-c-mode-main-func 1)
    ))


;;排序功能
;;s s 按照文件大小排序 
;;s x 按照文件扩展名排序。
;;s t 按照文件访问时间排序。
;;s b 按照文件名称的字母顺序排序
(add-hook 'dired-mode-hook (lambda ()
  (interactive)
  (make-local-variable  'dired-sort-map)
  (setq dired-sort-map (make-sparse-keymap))
  (define-key dired-mode-map "s" dired-sort-map)
  (define-key dired-sort-map "s"
              '(lambda () "sort by Size"
                (interactive) (dired-sort-other (concat dired-listing-switches "S"))))
  (define-key dired-sort-map "x"
              '(lambda () "sort by eXtension"
                 (interactive) (dired-sort-other (concat dired-listing-switches "X"))))
  (define-key dired-sort-map "t"
              '(lambda () "sort by Time"
                 (interactive) (dired-sort-other (concat dired-listing-switches "t"))))
  (define-key dired-sort-map "n"
              '(lambda () "sort by Name"
                 (interactive) (dired-sort-other (concat dired-listing-switches ""))))))



;;M-1 相当于最大化一个 buffer , 默认的 key bind 是 C-x 1 。
;;M-4 相当于关闭一个 buffer , 默认的 key bind 是 C-x k 。(没有成功);;M-0 相当于跳转到两个 buffer 中的另一个，默认的 key bind 是 C-x 0 。
;;M-5 可以显示 buffer 的完整的文件名称。
;;M- 和一个数字的组合默认用来输入命令的参数，例如 M-5 i 表示输入 iiiii ，但是 C-u 5 i 可以完成同样的功能。于是我就利用它们做起他的事情了。
;;C-x f 原来的绑定是 set-fill-column ,不太常用, 于是绑定到 find-file-at-point 上. 这个功能很有用, 类似于 Vim 的 gf 功能, 可以打开光标处的文件. 他也有普通 find-file 的功能. 这个功能在 shell 模式下和 c-mode 下特别有用.
(defun display-buffer-name ()
  (interactive)
  (message (buffer-file-name (current-buffer))))
;;(global-set-key (kbd "M-4") 'yic-kill-current-buffer)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-0") 'other-window)
(global-set-key (kbd "M-5") 'display-buffer-name)
(global-set-key (kbd "C-x f") 'find-file-at-point)


;;自动为文件增加可执行权限
;;用下面的办法对于编写 python, bash, per, awk, sed, 脚本的时候十分有用。在保存文件的时候，会自动给脚本 增加可执行权限。
(setq my-shebang-patterns
      (list "^#!/usr/.*/perl\\(\\( \\)\\|\\( .+ \\)\\)-w *.*"
        "^#!/usr/.*/sh"
        "^#!/usr/.*/bash"
        "^#!/bin/sh"
        "^#!/.*/perl"
        "^#!/.*/awk"
        "^#!/.*/sed"
        "^#!/bin/bash"))
(add-hook
 'after-save-hook
 (lambda ()
 (if (not (= (shell-command (concat "test -x " (buffer-file-name))) 0))
     (progn
       ;; This puts message in *Message* twice, but minibuffer
       ;; output looks better.
       (message (concat "Wrote " (buffer-file-name)))
       (save-excursion
         (goto-char (point-min))
         ;; Always checks every pattern even after
         ;; match.  Inefficient but easy.
         (dolist (my-shebang-pat my-shebang-patterns)
           (if (looking-at my-shebang-pat)
               (if (= (shell-command
                       (concat "chmod u+x " (buffer-file-name)))
                      0)
                   (message (concat
                             "Wrote and made executable "
                             (buffer-file-name))))))))
   ;; This puts message in *Message* twice, but minibuffer output
   ;; looks better.
   (message (concat "Wrote " (buffer-file-name))))))

;;********************************************************************************
;;给程序添加个time stamp
;; Time-Stamp: ""  或者
;; Time-Stamp: < > 
;;如果是其他语言，可能就是
;;#Time-Stamp: < >
;;Time-Stamp: < >
;;(add-hook write-file-hooks 'time-stamp)
(add-hook 'before-save-hook 'time-stamp)
(setq time-stamp-pattern nil)

;;********************************************************************************


;;c++中快速添加一个新class 的方法
;;(define-abbrev-table c++-mode-abbrev-table)
;;    '(("newclass" "" skeleton-new-class 1)))
;;
;;(define-skeleton skeleton-new-class
;;  "generate a class" "Class Name:"
;;  > "\nclass " str
;;  > "\n{"
;;  > "\npublic:"
;;  > "\n" str "(){"
;;  > "\n}"
;;  > "\nvirtual ~" str "(){"
;;  > "\n}"
;;  > "\n" str "(const " str "& other) {"
;;  > "\n}"
;;  > "\n" str "& operator=( const " str "& other) {"
;;  > "\nreturn *this;"
;;  > "\n}"
;;  > "\n};"
;;  )

;;********************************************************************************
;;自动查找 Makefile 编译工程
;; the following elisp code is use to
;; construct the compile command automatically.
;; so you don't need to write or choose the compile
;; command in the minibuffer.
;;
;; the rule is as following:
;; first, find GNUmakefile" "makefile" "Makefile"
;; if found, compile command is "make -C ."
;; else try to find one of make file in ".."
;; if found, compile command is "make -C .."
;; continue until reach the root directory "/"
;; if the make file still isn't found, try the
;; trivial compile command , that is,
;; if in the c++ mode:
;;         g++ -o your_source your_source.cc
;; if in the c mode
;;         gcc -o your_source your_source.c
;; if all is failed, do nothing.
;;
;; if you like this command, you can put the following
;; line in your .emacs
;;
;;

(global-set-key (kbd "<f7>") 'smart-compile)
(defun smart-compile-is-root-dir(try-dir)
  (or
   ;; windows root dir for a driver or Unix root
   (string-match "\\`\\([a-zA-Z]:\\)?/$" try-dir)
   ;; tramp root-dir
   (and (featurep 'tramp)
        (string-match (concat tramp-file-name-regexp ".*:/$") try-dir))))
(defun smart-compile-throw-final-path(try-dir)
  (cond
   ;; tramp root-dir
   ((and (featurep 'tramp)
         (string-match tramp-file-name-regexp try-dir))
    (with-parsed-tramp-file-name try-dir foo
        foo-localname))
   (t try-dir)))

(defun smart-compile-find-make-dir( try-dir)
  "return a directory contain makefile. try-dir is absolute path."
  (if (smart-compile-is-root-dir try-dir)
      nil ;; return nil if failed to find such directory.
    (let ((candidate-make-file-name `("GNUmakefile" "makefile" "Makefile")))
      (or (catch 'break
            (mapc (lambda (f)
                    (if (file-readable-p (concat (file-name-as-directory try-dir) f))
                        (throw 'break (smart-compile-throw-final-path try-dir))))
                  candidate-make-file-name)
            nil)
          (smart-compile-find-make-dir
           (expand-file-name (concat (file-name-as-directory try-dir) "..")))))))


(defun wcy-tramp-compile (arg-cmd)
  "reimplement the remote compile."
  (interactive "scompile:")
  (with-parsed-tramp-file-name default-directory foo
    (let* ((key (format "/plink:%s@%s:" foo-user foo-host))
           (passwd (password-read "PASS:" key))
           (cmd (format "plink %s -l %s -pw %s \"(cd %s ; %s)\""
                         foo-host foo-user
                         passwd
                         (file-name-directory foo-localname)
                         arg-cmd)))
      (password-cache-add key passwd)
      (save-some-buffers nil nil)
      (compile-internal cmd "No more errors")
      ;; Set comint-file-name-prefix in the compilation buffer so
      ;; compilation-parse-errors will find referenced files by ange-ftp.
      (with-current-buffer compilation-last-buffer
        (set (make-local-variable 'comint-file-name-prefix)
             (format "/plink:%s@%s:" foo-user foo-host))))))
(defun smart-compile-test-tramp-compile()
  (or (and (featurep 'tramp)
           (string-match tramp-file-name-regexp (buffer-file-name))
           (progn
             (if (not (featurep 'tramp-util)) (require 'tramp-util))
             'wcy-tramp-compile))
      'compile))
(defun smart-compile-get-local-file-name(file-name)
  (if (and
       (featurep 'tramp)
       (string-match tramp-file-name-regexp file-name))
      (with-parsed-tramp-file-name file-name foo
        foo-localname)
    file-name))
(defun smart-compile ()
  (interactive)
  (let* ((compile-func (smart-compile-test-tramp-compile))
         (dir (smart-compile-find-make-dir (expand-file-name "."))))
    (funcall compile-func
             (if dir
                 (concat "make -C " dir (if (eq compile-func 'tramp-compile) "&" ""))
               (concat
                (cond
                 ((eq major-mode 'c++-mode) "g++ -g -o ")
                 ((eq major-mode 'c-mode) "gcc -g -o "))
                (smart-compile-get-local-file-name (file-name-sans-extension (buffer-file-name)))
                " "
                (smart-compile-get-local-file-name (buffer-file-name)))))))
;;********************************************************************************




;;********************************************************************************
;;Emacs 中自动添加有半边括号的功能
;;             C  mode
(add-hook 'c-mode-hook 'hs-minor-mode)
(defun my-c-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist  '(
    (?` ?` _ "''")
    (?\( ?  _ " )")
    (?\[ ?  _ " ]")
    (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-c-mode-auto-pair)
;;********************************************************************************


;;********************************************************************************
;;如何使用 etags 浏览源代码
;;首先用下面的命令生成 TAGS 文件
;;find . | grep '\.h$\|\.cc\$' | etags -include -
;;`M-. TAG <RET>'
;;跳到第一个 TAG 的定义处。
;;`C-u M-.'
;;如果刚刚用过 M-. , 那么查找下一个定义处。
;;`C-u - M-.'
;;回到上一个定义处。
;;`C-M-. PATTERN <RET>'
;;按正则表达式搜索 TAG 的定义。
;;`C-u C-M-.'
;;如果刚刚用过了 C-M-. , 那么查找下一个。
;;`C-x 4 . TAG <RET>'
;;和 M-. 类似， 不过在另一个窗格显示。(`find-tag-other-window').
;;`C-x 5 . TAG <RET>'
;;和 M-. 类似， 不过在另一个窗框显示。(`find-tag-other-frame').
;;`M-*'
;;回到开始查找 TAG 的地方。
;;M-x visit-tags-table
;;用来选择 TAGS 文件，就是 etags 程序生成的文件。
;;
;;如果你记不住上面的命令，那么可以写一个 elisp 代码帮你。
(defun wcy-create-c-tags( dir)
  (interactive "DProject Root Directory:")
  (let ((default-directory dir))
    (shell-command "find . | grep -e '\\.cpp$\\|\\.h$\\|\\.c$' | etags -")))
;;********************************************************************************



;;********************************************************************************
;;遍历所有子目录查找文件内容
;;(efvar wcy-find-grep-file-class
;;  '(( ".*\\.h$"
;;      ".*\\.c$"
;;      ".*\\.cc$"
;;      ".*\\.cxx$"
;;      ".*\\.cpp$")
;;    (".*\\.el$")))
;;(defvar wcy-find-grep-file-class-history nil)
;;
;;(if (boundp 'tool-bar-map)
;;    (tool-bar-add-item "search-in-file"
;;                       'wcy-find-grep
;;                       'wcy-find-grep
;;                       :help "search in files"))
;;
;;(defun wcy-find-grep-internal (  regexp dir-name regexp-for-filter-file)
;;  (let ((my-grep-command (concat " grep  -e '"
;;                                 (mapconcat 'identity regexp-for-filter-file "\\|")
;;                                 "'" )))
;;    (setq dir-name (expand-file-name dir-name))
;;    (grep-find (concat "find "
;;                       dir-name
;;                       "  -type f -print | "
;;                       my-grep-command
;;                       " | xargs -e grep -H -n -e '"
;;                       regexp
;;                       "'")))
;;  (with-current-buffer compilation-last-buffer
;;    (local-set-key (kbd "C-l") 'wcy-find-grep-hide-dirname)
;;    (setq default-directory dir-name)
;;    (wcy-find-grep-hide-dirname)
;;    ))
;;
;;(defun wcy-find-grep-hide-dirname ()
;;  (interactive)
;;  (if (not (eq major-mode 'compilation-mode))
;;      (error "must run this command under grep-find mode buffer")
;;    (save-excursion
;;      (goto-char (point-min))
;;      (let* ((dir-name default-directory)
;;             (r (re-search-forward (concat "^" (regexp-quote dir-name)) nil t))
;;             begin end)progn
;;        (while r
;;          (setq begin (match-beginning 0))
;;          (setq end (match-end 0))
;;          (let* ((x (overlays-in begin end))
;;                 (e (or (and x (car x)) (make-overlay begin end))))
;;            (overlay-put e 'invisible (not (overlay-get e 'invisible))))
;;          (setq r (re-search-forward (concat "^" (regexp-quote dir-name)) nil t )))))))
;;
;;
;;(defun wcy-find-grep ( regexp dir-name regexp-for-fileter-file)
;;  (interactive (list  (read-from-minibuffer "Regexp:"
;;                                            (concat "\\<"
;;                                                    (regexp-quote (current-word))
;;                                                    "\\>");; initial content is nil
;;                                            nil ;; key map is nil
;;                                            nil ;; read as lisp expression, false;
;;                                            'regexp-history
;;                                            nil ;; not default
;;                                            nil ;;inherit-input-method
;;                                            )
;;                      (read-file-name (format "Directory(recursively):" )
;;                                      nil default-directory nil)
;;                      (if (buffer-file-name (current-buffer))
;;                          nil
;;                        (read-from-minibuffer "File Regexp:"
;;                                              nil
;;                                              nil
;;                                              nil
;;                                              'wcy-find-grep-file-class-history
;;                                              nil
;;                                              nil))))
;;  (let ((files-filter
;;         (if (null regexp-for-fileter-file)
;;            (dolist-if (var wcy-find-grep-file-class)
;;                       (string-match
;;                        (mapconcat 'identity var "\\|")
;;                        (buffer-file-name (current-buffer)))
;;                       var)
;;           (list (list regexp-for-fileter-file)))))
;;    (wcy-find-grep-internal regexp  dir-name (apply 'append files-filter))))

;;********************************************************************************



;;********************************************************************************
(defun wcy-c-open-other-file ()
  "if current file is a header file, then open the
   corresponding source file or vice versa.
"
   (interactive)
  (let ((f (buffer-file-name))
        (headers '("h" "hpp" "hxx"))
        (sources '("c" "cxx" "cpp" "cc")))
    (if f
        (let* ((b (file-name-sans-extension f))
               (x (file-name-extension f))
               (s (cond
                   ((member x headers) sources)
                   ((member x sources) headers)
                   (t nil)))
               (return-value nil))
          (while s
            (let ((try-file (concat b "." (car s))))
              (cond
               ((find-buffer-visiting try-file)
                (switch-to-buffer (find-buffer-visiting
                                   try-file))
                (setq s nil
                      return-value t))
               ((file-readable-p try-file)
                (find-file try-file)
                (setq s nil
                      return-value t))
               (t (setq s (cdr s))))))
          return-value))))
;;********************************************************************************


;;********************************************************************************
;;调用stardict 的命令行接口来查词典
;;如果选中了region就查询region的内容，
;;否则就查询当前光标所在的词
;;(global-set-key [mouse-3] 'kid-star-dict);;鼠标右键
;;(defun kid-star-dict()
;;********************************************************************************



;;********************************************************************************
;;auctex
(setq-default TeX-master "master") 
;;********************************************************************************


;;********************************************************************************
;;tabbar
(require 'tabbar)  
(tabbar-mode 1)  
(global-set-key [(meta j)] 'tabbar-backward)  
(global-set-key [(meta k)] 'tabbar-forward)
(global-set-key [(control meta j)] 'tabbar-backward-group)
(global-set-key [(control meta k)] 'tabbar-forward-group)
;;set group strategy
(defun tabbar-buffer-groups ()  
  "tabbar group"  
  (list  
   (cond  
    ((memq major-mode '(shell-mode dired-mode))  
     "shell"  
     )  
    ((memq major-mode '(c-mode c++-mode))  
     "cc"  
     )  
    ((eq major-mode 'python-mode)  
     "python"  
     )  
    ((memq major-mode
	   '(php-mode nxml-mode nxhtml-mode))
     "WebDev"
     )
    ((eq major-mode 'emacs-lisp-mode)
      "Emacs-lisp"
      )
    ((memq major-mode
	   '(tex-mode latex-mode text-mode snippet-mode))
     "Text"
     )
    ((string-equal "*" (substring (buffer-name) 0 1))  
     "emacs"  
     )  
    (t  
     "other"  
     )  
    )))  
(setq tabbar-buffer-groups-function 'tabbar-buffer-groups) 

;;;; 设置tabbar外观
;; 设置默认主题: 字体, 背景和前景颜色，大小
(set-face-attribute 'tabbar-default nil
                    :family "Vera Sans YuanTi Mono"
                    :background "gray80"
                    :foreground "gray10"
                    :height 1.0
                    )
;; 设置左边按钮外观：外框框边大小和颜色
(set-face-attribute 'tabbar-button nil
                    :inherit 'tabbar-default
                    :box '(:line-width 1 :color "gray30")
                    )
;; 设置当前tab外观：颜色，字体，外框大小和颜色
(set-face-attribute 'tabbar-selected nil
                    :inherit 'tabbar-default
                    :foreground "DarkGreen"
                    :background "LightGoldenrod"
                    :box '(:line-width 2 :color "DarkGoldenrod")
                    ;; :overline "black"
                    ;; :underline "black"
                    :weight 'bold
                    )
;; 设置非当前tab外观：外框大小和颜色
(set-face-attribute 'tabbar-unselected nil
                    :inherit 'tabbar-default
                    :box '(:line-width 2 :color "gray70")
                    )
;;********************************************************************************

;;==================== auto complete ====================
;; auto complete with clang
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/ac-dict/")  
(require 'auto-complete-clang)

(setq ac-auto-start 1)
(setq ac-quick-help-delay 0.5)
;; (ac-set-trigger-key "TAB")
(define-key ac-mode-map [(control tab)] 'auto-complete)

(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)
;; -------------------- end of auto complete --------------------

;;==================== python ====================
;;(require 'python)
;;
;;(autoload 'python-mode "python-mode" "Python Mode." t)
;;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;;(add-to-list 'interpreter-mode-alist '("python" . python-mode))
;;(add-to-list 'load-path "~/.emacs.d/plugins/Pymacs")
;;
;;(require 'pymacs)
;;(autoload 'pymacs-apply "pymacs")
;;(autoload 'pymacs-call "pymacs")
;;(autoload 'pymacs-eval "pymacs" nil t)
;;(autoload 'pymacs-exec "pymacs" nil t)
;;(autoload 'pymacs-load "pymacs" nil t)
;;(autoload 'pymacs-autoload "pymacs")
;;(eval-after-load "pymacs"
;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))

;;; Initialize Rope
;;(pymacs-load "ropemacs" "rope-")
;;(setq ropemacs-enable-autoimport t)
;;
;;(ac-ropemacs-initialize)
;;(add-hook 'python-mode-hook
;;	  (lambda ()
;;	    (add-to-list 'ac-sources 'ac-source-ropemacs)))
;;-------------------- python --------------------

;;org todo多状态工作流程
(setq org-todo-keywords '((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))
(setq org-log-done 'time)

;;********************************************************************************
(add-to-list 'auto-mode-alist '("\\.org\\'".org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;;********************************************************************************

;;********************************************************************************
;;time-stamp
;;在所编辑的文件的前八行内插入如下标记
;;Time-stamp: <>  或者 Time-stamp: ""
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(add-hook 'write-file-hooks 'time-stamp)
(setq time-stamp-format "%:y-%02m-%02d %02H:%02M:%02S Richard")
;;********************************************************************************

;;非常好用的英文拼写检查
(require 'flyspell)

;;********************************************************************************
;;在 Emacs 中使用sdcv.el
;;2010年06月19日 星期六 20:24
;;在 Emacs 配置文件中加入以下代码

(global-set-key (kbd "C-c d ") 'kid-sdcv-to-buffer)
(defun kid-sdcv-to-buffer ()
  (interactive)
  (let ((word (if mark-active
                  (buffer-substring-no-properties (region-beginning) (region-end))
                  (current-word nil t))))
    (setq word (read-string (format "Search the dictionary for (default %s): " word)
                            nil nil word))
    (set-buffer (get-buffer-create "*sdcv*"))
    (buffer-disable-undo)
    (erase-buffer)
    (let ((process (start-process-shell-command "sdcv" "*sdcv*" "sdcv" "-n" word)))
      (set-process-sentinel
       process
       (lambda (process signal)
         (when (memq (process-status process) '(exit signal))
           (unless (string= (buffer-name) "*sdcv*")
             (setq kid-sdcv-window-configuration (current-window-configuration))
             (switch-to-buffer-other-window "*sdcv*")
       (local-set-key (kbd "d") 'kid-sdcv-to-buffer)
             (local-set-key (kbd "q ") (lambda ()
                                        (interactive)
                                        (bury-buffer)
                                        (unless (null (cdr (window-list))) ; only one window
                                          (delete-window)))))
           (goto-char (point-min))))))))  
;;********************************************************************************
(setq mew-imap-auth t)
(setq mew-user "740172927helloworld")
(setq mew-mail-domain "gmail.com")
(setq mew-pop-user "740172927helloworld@gmail.com")
(setq mew-pop-auth 'pass)
(setq mew-pop-ssl t)
(setq mew-pop-delete nil)
(setq mew-pop-server "pop.gmail.com")
(setq mew-pop-ssl-port "995")
(setq mew-imap-ssl t)
(setq mew-imap-ssl-port "993")
(setq mew-smtp-auth t)
(setq mew-smtp-ssl t)
(setq mew-smtp-ssl-port "465")
(setq mew-smtp-user "740172927helloworld@gmail.com")
(setq mew-smtp-server "smtp.gmail.com")
(setq mew-ssl-verify-level 0)

;;3. html邮件相关设置
;;
;;     (setq mew-prog-text/html         'mew-mime-text/html-w3m) ;; See w3m.el
;;     (setq mew-prog-text/html-ext     "/usr/bin/firefox")
;;
;;     (setq mew-prog-text/xml         'mew-mime-text/html-w3m) ;; See w3m.el
;;     (setq mew-prog-text/xml-ext     "/usr/bin/firefox")
;;
;;     (setq mew-prog-application/xml         'mew-mime-text/html-w3m)
;;     (setq mew-prog-application/xml-ext     "/usr/bin/firefox")
;;
;;    (setq mew-prog-application/X-Dvi         "/usr/bin/xdvi")


    ;; ;;使用w3m 
;;     (setq mew-mime-multipart-alternative-list '("text/html" "text/plain" "*."))
;;     (condition-case nil
;;     (require 'mew-w3m)
;;    (file-error nil))
;;    (setq mew-use-w3m-minor-mode t)
;;    (setq mew-w3m-auto-insert-image t)
;;4. biff设置（新邮件通知）

;;;;    首先要下载popbiff.el这个文件，在.emacs中加入
   (load "popbiff")
;;    这是最近才知道需要这个的。
    ;; ;;
    ;; ;; Popbiff
    ;; ;; 
    (setq mew-use-cached-passwd t);;必须
    (setq mew-use-popbiff t)
    (setq mew-use-popbiff-bell t) 
    (setq mew-popbiff-interval 5) ;这个值一定要小于下面的timer-unit和lifetime值，这个可以使用describe-variable查看一下
    (setq mew-pop-popbiff-interval 3)
    (setq mew-passwd-timer-unit 60)       ; 60 minutes = 1 hour                                             
    (setq mew-passwd-lifetime 24)         ; timer-unit x 24 = 24 hours  
(defvar mew-cite-fields '("From:" "Subject:" "Date:"))
(defvar mew-cite-format "From: %s\nSubject: %s\nDate: %s\n\n")
(defvar mew-cite-prefix "> ")
;;********************************************************************************
(setq nxml-bind-meta-tab-to-complete-flag t)
(setq nxml-slash-auto-complete-flag t)
;;********************************************************************************
;;html-helper-mode
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))
;;********************************************************************************
(add-to-list 'load-path "~/.emacs.d/plugins/html5-el/")
;;Finally, wire this stuff into nxml-mode like so, altering the path to schemas.xml appropriately.

(eval-after-load "rng-loc"
  '(add-to-list 'rng-schema-locating-files "~/.emacs.d/plugins/html5-el/schemas.xml"))

(require 'whattf-dt)
;;********************************************************************************
;;emacs org-mode beamer ;latex;auctex;
;; allow for export=>beamer by placing

;; #+LaTeX_CLASS: beamer in org files
(require 'org-latex)
;;(require 'org-beamer)
;;(unless (boundp 'org-export-latex-classes)
;;  (setq org-export-latex-classes nil))
;;(add-to-list 'org-export-latex-classes
;;  ;; beamer class, for presentations
;;  '("beamer"
;;     "\\documentclass[11pt]{beamer}\n
;;      \\mode<{{{beamermode}}}>\n
;;      \\usetheme{{{{beamertheme}}}}\n
;;      \\usecolortheme{{{{beamercolortheme}}}}\n
;;      \\beamertemplateballitem\n
;;      \\setbeameroption{show notes}
;;      \\usepackage[utf8]{inputenc}\n
;;      \\usepackage[T1]{fontenc}\n
;;      \\usepackage{hyperref}\n
;;      \\usepackage{color}
;;      \\usepackage{listings}
;;      \\lstset{numbers=none,language=[ISO]C++,tabsize=4,
;;  frame=single,
;;  basicstyle=\\small,
;;  showspaces=false,showstringspaces=false,
;;  showtabs=false,
;;  keywordstyle=\\color{blue}\\bfseries,
;;  commentstyle=\\color{red},
;;  }\n
;;      \\usepackage{verbatim}\n
;;      \\institute{{{{beamerinstitute}}}}\n          
;;       \\subject{{{{beamersubject}}}}\n"
;;
;;     ("\\section{%s}" . "\\section*{%s}")
;;     
;;     ("\\begin{frame}[fragile]\\frametitle{%s}"
;;       "\\end{frame}"
;;       "\\begin{frame}[fragile]\\frametitle{%s}"
;;       "\\end{frame}")))
;;
;;  ;; letter class, for formal letters
;;
;;  (add-to-list 'org-export-latex-classes
;;
;;  '("letter"
;;     "\\documentclass[11pt]{letter}\n
;;      \\usepackage[utf8]{inputenc}\n
;;      \\usepackage[T1]{fontenc}\n
;;      \\usepackage{color}"
;;     
;;     ("\\section{%s}" . "\\section*{%s}")
;;     ("\\subsection{%s}" . "\\subsection*{%s}")
;;     ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;     ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;     ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;;********************************************************************************
(require 'cscope)
;;(require 'psvn)

;;********************************************************************************
;;bing 翻译
;;(add-to-list 'load-path (concat git-path "translate-emacs-toolkit"))
(require 'bing-translate-api)
 
;; Your appId. Application at http://www.bing.com/toolbox/bingdeveloper/
(defvar bingtranslate-appId "87CC8BD9E68CD302C80CC2B83318FAA00DA4D6E6") 
 ;;3644.V2_Json.Translate.2148FFFA
;;87CC8BD9E68CD302C80CC2B83318FAA00DA4D6E6
;; Your priority language to translate from.
(defvar bingtranslate-from-priority "en")
 
;; Your priority language to translate to.
(defvar bingtranslate-to-priority "zh-CHS")
(require 'bing-translate-api)
 
;; key bounding
(global-set-key [M-f1] 'bingtranslate-region-or-input)
 
;; add a pair of language
;; Parameters: "pair name" "from language" "to language"
(bingtranslate-add-pair "1" "zh-CHS" "en")
;;********************************************************************************
(require 'mysql)
(require 'sql-completion)
   (setq sql-interactive-mode-hook
         (lambda ()
           (define-key sql-interactive-mode-map "\t" 'comint-dynamic-complete)
           (sql-mysql-completion-init)))
;;********************************************************************************
(require 'ibus)
(ibus-mode t)
