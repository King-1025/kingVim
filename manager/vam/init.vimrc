set nocompatible | filetype indent plugin on | syn on
let plugin = get(g:, 'kingVimPlugin', {})
let g:vim_addon_manager=plugin
echo g:vim_addon_manager

call vam#ActivateAddons(['vim-airline-themes'], {'auto_install' : 0})
