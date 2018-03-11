if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/ubuntu/.vimrc', '/home/ubuntu/.vim/bundle/rc/dein.toml', '/home/ubuntu/.vim/bundle/rc/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/ubuntu/.vim/bundle'
let g:dein#_runtime_path = '/home/ubuntu/.vim/bundle/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/ubuntu/.vim/bundle/.cache/.vimrc'
let &runtimepath = '/home/ubuntu/.vim/bundle/repos/github.com/Shougo/dein.vim/,/home/ubuntu/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/home/ubuntu/.vim/bundle/repos/github.com/Shougo/dein.vim,/home/ubuntu/.vim/bundle/.cache/.vimrc/.dein,/usr/share/vim/vim74,/home/ubuntu/.vim/bundle/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/ubuntu/.vim/after'
filetype off
