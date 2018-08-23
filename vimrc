set expandtab
set tabstop=4
set shiftwidth=4
set showmatch

set nocompatible
set backspace=indent,eol,start
set fileencodings=utf-8
syntax on 
"setting immidate work
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

" 设置配色方案
colorscheme elflord
syntax enable
set background=dark
"colorscheme solarized

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

let mapleader=";"

set wildmenu
set hlsearch
"共享剪贴板  
set clipboard+=unnamed

"vundle's setting

if filereadable(expand('~/.vimrc_vundle'))
    source ~/.vimrc_vundle
endif
