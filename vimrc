"---------------------------------------------------------------------
" Pathogen
"---------------------------------------------------------------------
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"---------------------------------------------------------------------


"---------------------------------------------------------------------
" General
"---------------------------------------------------------------------
filetype plugin on
filetype indent on
syntax enable
set autoread
set history=400
set pastetoggle=<F12>
set nobackup
set nowb
set noswapfile
"---------------------------------------------------------------------


"---------------------------------------------------------------------
" User interface
"---------------------------------------------------------------------
" General
set t_Co=256
colorscheme ir_black 
set background=dark
set wildmenu
set ruler
set cmdheight=2
set lazyredraw
set backspace=eol,start,indent
set ignorecase
set smartcase
set incsearch
set showmatch
set mat=2
set hlsearch

" Wrap 
set wrap
set linebreak
set whichwrap+=<,>,h,l

" Indent
set autoindent
set smartindent

" Tab
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab

" Folding
set nofoldenable
set foldmethod=indent
set foldnestmax=10
set foldlevel=1

" File manager
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_preview=1
let g:netrw_winsize=40 
"---------------------------------------------------------------------


"---------------------------------------------------------------------
" Ruby
"---------------------------------------------------------------------
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading=1
autocmd FileType ruby,eruby let g:rubycomplete_rails=1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global=1
"---------------------------------------------------------------------


"---------------------------------------------------------------------
" Key mappings
"---------------------------------------------------------------------
" Copy/Paste
map <C-V> "+gP
cmap <C-V> <C-R>+
vnoremap <C-C> "+y""

" AutoClose
map <F8> :AutoCloseToggle<Enter>

" File manager
map <F9> :Ve<Enter>
"---------------------------------------------------------------------
