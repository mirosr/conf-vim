"---------------------------------------------------------------------
" Pathogen
"---------------------------------------------------------------------
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"---------------------------------------------------------------------


"---------------------------------------------------------------------
" Matchit
"---------------------------------------------------------------------
runtime macros/matchit.vim
"---------------------------------------------------------------------


"---------------------------------------------------------------------
" General
"---------------------------------------------------------------------
filetype on
filetype plugin on
filetype indent on
syntax on
set ar
set hi=50
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
set bg=dark
set wmnu
set ru
set ch=2
set lz
set bs=eol,start,indent
set ic
set scs
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
" Disable arrow keys
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
nnoremap  <Up>    <NOP>
nnoremap  <Down>  <NOP>
nnoremap  <Left>  <NOP>
nnoremap  <Right> <NOP>

" Disable page keys
inoremap <PageUp>   <NOP>
nnoremap  <PageDown> <NOP>

" Copy/Paste
map <C-V> "+gP
cmap <C-V> <C-R>+
vnoremap <C-C> "+y""

" Stop the highlighting
map <F2> :noh<CR>

" AutoClose
map <F8> :AutoCloseToggle<CR>

" File manager
map <F9> :Ve<CR>
"---------------------------------------------------------------------
