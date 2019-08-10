nmap <C-t> :NERDTreeToggle<cr>

syntax enable
let g:rehash256 = 0
colorscheme herald

let g:airline_theme="luna"

set nu

set helplang=cn

set laststatus=2  "永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer

set cursorline

set autoindent
" 开启智能对齐
set smartindent

autocmd BufWritePost $MYVIMRC source $MYVIMRC

set hlsearch
