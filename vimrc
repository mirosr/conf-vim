"---------------------------------------------------------------------
" Pathogen
"---------------------------------------------------------------------
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"---------------------------------------------------------------------


"---------------------------------------------------------------------
" General
"---------------------------------------------------------------------
filetype on
filetype plugin on
filetype indent on
syntax on
set ar
set history=400
set pt=<F12>
set nobk
set nowb
set noswf
"---------------------------------------------------------------------


"---------------------------------------------------------------------
" User interface
"---------------------------------------------------------------------
" General
set t_Co=256
colo ir_black
set background=dark
set wmnu
set ru
set ch=2
set lz
set backspace=eol,start,indent
set ignorecase
set smartcase
set is
set sm
set mat=2
set hls
set ls=2
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ ASCII:%b

" Wrap
set lbr
set ww+=h,l

" Indent
set ai
set si

" Tab
set et
set ts=2
set sw=2
set sta

" Folding
set nofen
set fdm=indent
set fdn=10
set fdl=1

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
