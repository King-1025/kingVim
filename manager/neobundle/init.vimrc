" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
   set nocompatible               " Be iMproved
endif


" Required:
call neobundle#begin(g:kingVimPlugin)

" Let NeoBundle manage NeoBundle
" Required:
"NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundleFetch g:kingVimManager.'/neobundle/source'

NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tomasr/molokai'

NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

NeoBundle 'tpope/vim-surround'
NeoBundle 'terryma/vim-smooth-scroll'
NeoBundle 'terryma/vim-expand-region'

NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'

NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'nathanaelkane/vim-indent-guides' " 代码块竖线
NeoBundle 'scrooloose/nerdcommenter' " 代码注释
NeoBundle 'dyng/ctrlsf.vim' " 搜索功能
NeoBundle 'honza/vim-snippets' " 模板库
NeoBundle 'terryma/vim-multiple-cursors' " 多光标操作
NeoBundle 'christoomey/vim-tmux-navigator' " tmux - vim中Ctrl + h, j, k, l光标冲突解决
NeoBundle 'alvan/vim-closetag' " html自动补全
NeoBundle 'jiangmiao/auto-pairs' " 符号自动补全
NeoBundle 'godlygeek/tabular' " 按符号自动对齐如: Tab \= , : Tab \|
NeoBundle 'iamcco/mathjax-support-for-mkdp' " mardown实时预览辅助插件
NeoBundle 'iamcco/markdown-preview.vim' " mardown实时预览插件
NeoBundle 'marijnh/tern_for_vim' " js语法支持
NeoBundle 'w0rp/ale' " 语法提示
NeoBundle 'majutsushi/tagbar' " tagbar显示文件大纲

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
