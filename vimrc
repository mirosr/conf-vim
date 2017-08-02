"---------------------------------------------------------------------
" Plugins
"---------------------------------------------------------------------
" Auto install vim-plug if it's missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'Townk/vim-autoclose'
Plug 'tsaleh/vim-supertab'
Plug 'gregsexton/gitv'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'kien/ctrlp.vim'
Plug 'slim-template/vim-slim'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-endwise'
Plug 'rking/ag.vim'

call plug#end()
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
colo jellybeans
set bg=dark
set wmnu
set ru
set ch=1
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
set nu
set rnu

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
set tpm=30

" Folding
set nofen
set fdm=indent
set fdn=10
set fdl=1

" Window splitting
set splitbelow
set splitright

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
" Git
"---------------------------------------------------------------------
autocmd Filetype gitcommit setlocal spell textwidth=72
"---------------------------------------------------------------------

"---------------------------------------------------------------------
" Key mappings
"---------------------------------------------------------------------
" Key bindings while typing non-latin text
set langmap=Ч~,ЯQ,ВW,ЕE,РR,ТT,ЪY,УU,ИI,ОO,ПP,Ш{,Щ},АA,СS,ДD,ФF,ГG,ХH,ЙJ,КK,ЛL,ЗZ,ЬX,ЦC,ЖV,БB,НN,МM,ч`,яq,вw,еe,рr,тt,ъy,уu,иi,оo,пp,ш[,щ],аa,сs,дd,фf,гg,хh,йj,кk,лl,зz,ьx,цc,жv,бb,нn,мm

" Disable arrow keys
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
nnoremap <Up>    <NOP>
nnoremap <Down>  <NOP>
nnoremap <Left>  <NOP>
nnoremap <Right> <NOP>

" Disable page keys
inoremap <PageUp>   <NOP>
nnoremap <PageDown> <NOP>

" Disable entering Ex mode with Q
map Q <Nop>

" Switch between windows
map <C-K> <C-W>k
map <C-J> <C-W>j
map <C-H> <C-W>h
map <C-L> <C-W>l

" Swapping windows
map <C-S> <C-W>r

" Copy/Paste
map <C-V> "+gP
cmap <C-V> <C-R>+
vnoremap <C-C> "+y""

" Stop the highlighting
map <F2> :noh<CR>

" AutoClose
map <F3> :AutoCloseToggle<CR>
"---------------------------------------------------------------------

"---------------------------------------------------------------------
" Plugins
"---------------------------------------------------------------------
if executable('ag')
  let g:ag_working_path_mode='r'

  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
"---------------------------------------------------------------------
