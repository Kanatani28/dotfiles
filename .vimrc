
" dein setup
let s:dein_dir = $HOME . '/.vim/bundle'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  " Load and cached toml
  " all plugins listed in toml
  call dein#load_toml(s:dein_dir . '/rc/dein.toml', {'lazy': 0})
  call dein#load_toml(s:dein_dir . '/rc/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"+----------------------+
"| Vim default settings |
"+----------------------+

" シンタックスハイライトをON
syntax enable
" 行番号を表示
set number
" マッチするカッコを強調表示
set showmatch matchtime=1
" タブと行の折り返しを可視化
set list listchars=tab:>\ ,extends:<
" 常にタブをスペースに展開
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
" 自動インデントをON
set smartindent
" 新しいウィンドウを開く際に現在のウィンドウの位置が変わらないように
set splitright
set splitbelow
" バックアップファイルを作成しない
set nobackup
" 検索でマッチしたワードをハイライト
set hlsearch
" インクリメンタルサーチを有効化
set incsearch
" 大文字を含まない文字列での検索では大文字小文字を区別しない
set ignorecase
set smartcase
" 常にステータスラインを表示
set laststatus=2
" 常にコマンドを表示
set showcmd
" \+pでPasteモードと切り替え
set pastetoggle=<leader>p
" Insertモード中に<BS>で直前の文字を消せるように
set backspace=indent,eol,start
" マーカーで折り畳む
set foldmethod=marker
" 常にコマンドを表示
set showcmd

" 改行時に前の行のインデントを継続する
set autoindent
" タブ文字の表示幅
set tabstop=4
" Vimが挿入するインデントの幅
set shiftwidth=4
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
