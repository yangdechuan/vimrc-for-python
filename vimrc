""""""""""""""""""""""""""""""""""""""""
""""""""""Yang Dechuan's vimrc""""""""""
""""""""""""""""""""""""""""""""""""""""

" =================================
" ==========Vundle Plugin==========
" =================================
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ================================
" ==========Basic Config==========
" ================================
" 打开语法检查
syntax on

" 打开语法高亮
syntax enable

" 显示光标当前位置
set ruler

" 在状态栏显示正在输入的命令
set showcmd

" 状态栏配置
set laststatus=2

" 设置行号
set nu

" 缩进
set autoindent
set smartindent

set tabstop=4         " 设置 tab 的宽度
set softtabstop=4     " 设置 删除 tab 的宽度
set shiftwidth=4      " 设置 智能缩进的宽度
set expandtab         " 设置 将 tab 转换为 4 个空格

" 突出显示当前行、列
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" set cursorcolumn
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" ===============================
" ==========Key Mapping==========
" ===============================
" j k 移动行的时候光标始终在屏幕中间
nnoremap j jzz
nnoremap k kzz

" 快速窗口切换
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" =================================
" ==========Config Plugin==========
" =================================
" scrooloose/nerdtree
" Map a shortcut to open NERDTree.
nmap <silent> <F3> :NERDTreeToggle<CR>

" Open a NERDTree automatically when vim starts up if no files were specified.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree automatically when vim starts up on opening a directory. 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close vim if the only window left open is a NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Yggdroot/indentLine
