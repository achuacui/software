"conf for vundle {{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"使用vundle来管理自己
Plugin 'gmarik/Vundle.vim'

"状态栏美化
Plugin 'https://github.com/Lokaltog/vim-powerline.git'

"显示树状的文件目录
Plugin 'The-NERD-tree'

"使用快捷键ctrl p可以快速搜索当前目录下的文件
Plugin 'kien/ctrlp.vim'

"使用命令:A可以快速在.h和.cpp之间切换（也可以用:AV侧分窗口来同时查看）
Plugin 'a.vim'

"代码提示与补全
Plugin 'neocomplcache'

"自动补全引号、括号等配对符号
Plugin 'AutoClose'

"自动识别文件编码
Plugin 'FencView.vim'

"显示行末的空格
Plugin 'ShowTrailingWhitespace'

call vundle#end()
filetype plugin indent on
" conf for vundle }}

" common conf {{
filetype on "检测文件类型
syntax enable "语法支持
colorscheme molokai "配色方案

set autoindent "自动缩进
set cindent "C风格的缩进格式

set backspace=2 "在insert模式下使用退格键删除

set showmatch "代码匹配
"set foldmethod=syntax "代码折叠

set laststatus=2 "总是显示状态栏

set showmode "显示当前模式
set showcmd "显示当前命令

set expandtab "设置tab和缩进的空格数目
set shiftwidth=4
set tabstop=4

set number "显示行号
set cursorline "为光标所在行添加下划线

set autoread "文件在vim之外修改过，则自动重新载入
set nowrap "禁止自动折行
set colorcolumn=120

set hls "搜索时高亮显示匹配项
set incsearch "递增搜索
set ignorecase "搜索时忽略大小写

set vb t_vb= "输入错误命令时，不发出蜂鸣器报警

set history=1000 "历史命令的数目
" common conf }}

" conf for tabs
nnoremap <C-l> gt
nnoremap <C-h> gT

" conf for neocomplcache
let g:neocomplcache_enable_at_startup = 1

" remove trailing whitespace
nnoremap <F8> :%s/\s\+$//g<CR>

" fix a problem that vim can't be used in crontab -e"
autocmd filetype crontab set nobackup nowritebackup
