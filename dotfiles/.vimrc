set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'jwalton512/vim-blade'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'tpope/vim-surround'
Plugin 'hokaccha/vim-html5validator'
Plugin 'vim-syntastic/syntastic'
Plugin 'osyo-manga/vim-watchdogs'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'soramugi/auto-ctags.vim'
Plugin 'sickill/vim-monokai'


call vundle#end()
filetype plugin indent on
augroup MyAutoCmd
    autocmd!
augroup END

map <C-n> :NERDTreeToggle<CR>""""
let g:user_emmet_leader_key = '<C-E>'
let g:neocomplete#enable_at_startup = 1

syntax enable
colorscheme monokai

" setting
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
" set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
syntax enable

" Tab系
set list listchars=tab:\>\-
set expandtab
set tabstop=2
set shiftwidth=2


" 検索系
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set backspace=indent,eol,start
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END
