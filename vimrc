"Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Plugins
filetype plugin on

"General
set nocompatible
set pastetoggle=<F12>
syntax enable
set history=400
set autoread

"Colors
set background=dark
set t_Co=256
colorscheme ir_black 

"User interface
set wildmenu
set ruler
set cmdheight=2
set lz
set backspace=eol,start,indent
set ignorecase
set incsearch
set noerrorbells
set novisualbell
set t_vb=
set showmatch
set mat=2
set hlsearch

"Folding
set nofen
set fdl=0

"Backup
set nobackup
set nowb
set noswapfile

"Tabs
set expandtab
set ts=2
set bs=2
set shiftwidth=2
set smarttab

"Indent
set ai
set si
set wrap

"Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

"File manager
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_preview=1

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"Key mappings
"Copy/Paste
map <C-V> "+gP
cmap <C-V> <C-R>+
vnoremap <C-C> "+y""
"AutoClose
map <F8> :AutoCloseToggle<Enter>
