call plug#begin('~/.config/nvim/bundle')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'drewtempelmeyer/palenight.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'habamax/vim-asciidoctor'

call plug#end()

" basics
filetype plugin indent on
syntax on set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set nu
set termguicolors
set wildmenu
set noerrorbells
set undodir=~/.vim/undodir
set undofile

set background=dark
colorscheme palenight

let g:airline_theme = "palenight"

if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif

" Add Date to file
nnoremap <F6> "=strftime("%a %d %b %Y")<CR>P
inoremap <F6> <C-R>=strftime("%a %d %b %Y")<CR>

" FZF
nnoremap <silent> <C-p> :Files %:p:h<CR>

