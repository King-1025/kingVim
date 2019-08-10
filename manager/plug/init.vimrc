call plug#begin(g:kingVimPlugin)

Plug g:kingVimManager.'/plug/source'

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tomasr/molokai'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-expand-region'

Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'

Plug 'flazz/vim-colorschemes'

Plug 'nathanaelkane/vim-indent-guides' " 代码块竖线
Plug 'scrooloose/nerdcommenter' " 代码注释
Plug 'dyng/ctrlsf.vim' " 搜索功能
Plug 'honza/vim-snippets' " 模板库
Plug 'terryma/vim-multiple-cursors' " 多光标操作
Plug 'christoomey/vim-tmux-navigator' " tmux - vim中Ctrl + h, j, k, l光标冲突解决
Plug 'alvan/vim-closetag' " html自动补全
Plug 'jiangmiao/auto-pairs' " 符号自动补全
Plug 'godlygeek/tabular' " 按符号自动对齐如: Tab \= , : Tab \|
Plug 'iamcco/mathjax-support-for-mkdp' " mardown实时预览辅助插件
Plug 'iamcco/markdown-preview.vim' " mardown实时预览插件
Plug 'marijnh/tern_for_vim' " js语法支持
Plug 'w0rp/ale' " 语法提示
Plug 'majutsushi/tagbar' " tagbar显示文件大纲

call plug#end()
