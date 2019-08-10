set nocompatible              " be iMproved, required
filetype off                  " required

"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin(g:kingVimPlugin)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasr/molokai'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-expand-region'

Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'

Plugin 'flazz/vim-colorschemes'

Plugin 'nathanaelkane/vim-indent-guides' " 代码块竖线
Plugin 'scrooloose/nerdcommenter' " 代码注释
Plugin 'dyng/ctrlsf.vim' " 搜索功能
Plugin 'honza/vim-snippets' " 模板库
Plugin 'terryma/vim-multiple-cursors' " 多光标操作
Plugin 'christoomey/vim-tmux-navigator' " tmux - vim中Ctrl + h, j, k, l光标冲突解决
Plugin 'alvan/vim-closetag' " html自动补全
Plugin 'jiangmiao/auto-pairs' " 符号自动补全
Plugin 'godlygeek/tabular' " 按符号自动对齐如: Tab \= , : Tab \|
Plugin 'iamcco/mathjax-support-for-mkdp' " mardown实时预览辅助插件
Plugin 'iamcco/markdown-preview.vim' " mardown实时预览插件
Plugin 'marijnh/tern_for_vim' " js语法支持
Plugin 'w0rp/ale' " 语法提示
Plugin 'majutsushi/tagbar' " tagbar显示文件大纲

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

colorscheme herald
