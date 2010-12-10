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

"functions
"Use Tab for code completion
function! SuperCleverTab()
  if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
    return "\<Tab>"
  else
    if &omnifunc != ''
      return "\<C-X>\<C-O>"
    elseif &dictionary != ''
      return "\<C-K>"
    else
      return "\<C-N>"
    endif
  endif
endfunction
inoremap <F3> <C-R>=SuperCleverTab()<cr>

"Key mappings
"Copy/Paste
map <C-V> "+gP
cmap <C-V> <C-R>+
vnoremap <C-C> "+y""
"NERDTree
map <F9> :NERDTreeToggle<Enter>
"AutoClose
map <F8> :AutoCloseToggle<Enter>
