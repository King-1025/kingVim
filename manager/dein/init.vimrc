if &compatible
  set nocompatible
endif

if dein#load_state(g:kingVimPlugin)
  call dein#begin(g:kingVimPlugin)

  call dein#add(g:kingVimManager.'/dein/source')
  
  call dein#add('scrooloose/syntastic')
  call dein#add('scrooloose/nerdtree')
  call dein#add('kien/ctrlp.vim')
  call dein#add('tomasr/molokai')
  
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  
  call dein#add('tpope/vim-surround')
  call dein#add('terryma/vim-smooth-scroll')
  call dein#add('terryma/vim-expand-region')
  
  call dein#add('tpope/vim-git')
  call dein#add('tpope/vim-fugitive')
  call dein#add('gregsexton/gitv')
  
  call dein#add('flazz/vim-colorschemes')
  
  call dein#add('nathanaelkane/vim-indent-guides') " 代码块竖线
  call dein#add('scrooloose/nerdcommenter') " 代码注释
  call dein#add('dyng/ctrlsf.vim') " 搜索功能
  call dein#add('honza/vim-snippets') " 模板库
  call dein#add('terryma/vim-multiple-cursors') " 多光标操作
  call dein#add('christoomey/vim-tmux-navigator') " tmux - vim中Ctrl + h, j, k, l光标冲突解决
  call dein#add('alvan/vim-closetag') " html自动补全
  call dein#add('jiangmiao/auto-pairs') " 符号自动补全
  call dein#add('godlygeek/tabular') " 按符号自动对齐如: Tab \= , : Tab \|
  call dein#add('iamcco/mathjax-support-for-mkdp') " mardown实时预览辅助插件
  call dein#add('iamcco/markdown-preview.vim') " mardown实时预览插件
  call dein#add('marijnh/tern_for_vim') " js语法支持
  call dein#add('w0rp/ale') " 语法提示
  call dein#add('majutsushi/tagbar') " tagbar显示文件大纲

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
   call dein#install()
endif
