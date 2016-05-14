set nocompatible
set encoding=utf-8


call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
call plug#end()


syntax on
set background=dark
colorscheme solarized

set hidden " do not unload buffer, when it is abandoned

set laststatus=2   " always show status line
set ruler          " show ruller
set number         " show line numbers
set colorcolumn=80 " right margin column
set list           " show invisibles
set listchars=tab:»\ ,trail:·,nbsp:⍽

set ttimeoutlen=250 " reduce time out on key codes, keep on mappings

set tabstop=2     " set tab display width
set expandtab     " replace tabs with
set shiftwidth=2  " this number of spaces
set softtabstop=2 " and when backspacing too

set ignorecase " case-insensetive search
set smartcase  " case-sesitive if pattern contains upper case chars
set incsearch  " highlight search matches when typing
set hlsearch   " and after using search
set showmatch  " highlight matching bracket when inserting new

set wildmenu " enable advanced auto completion menu
set wildmode=longest,full

set viminfo='25,\"50,n~/.vim/.viminfo

let g:airline#extensions#tabline#enabled=1

if has('gui_running')
  let g:airline_powerline_fonts=1
endif

" toggle relative line numbers
nnoremap <silent> <C-n> :setlocal relativenumber!<CR>

" disable annoying help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
