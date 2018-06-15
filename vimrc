syntax on "自动语法高亮

set nu              " 显示行号  
"color asmanian2     " 设置背景主题  
set guifont=Courier_New:h10:cANSI   " 设置字体  

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  

set foldenable      " 允许折叠  
set foldmethod=manual   " 手动折叠  
"set background=dark "背景使用黑色 
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  

" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

" 设置配色方案
colorscheme elflord

set noswapfile
set nobackup
set nowritebackup

"编码设置
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set encoding=utf-8

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn

"允许插件  
filetype plugin on
"共享剪贴板  
set clipboard+=unnamed
" 高亮显示匹配的括号
set showmatch
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab


"vundle's setting

if filereadable(expand('~/.vimrc_vundle'))
    source ~/.vimrc_vundle
endif
