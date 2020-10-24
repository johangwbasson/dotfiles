syntax on
set encoding=UTF-8
filetype plugin on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch

map <C-V> "+gP                                  
imap <C-V> <ESC><C-V>i                           
vmap <C-C> "+y          

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins
"
" Plugin Install:
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"
" COC
"
" :CocInstall coc-json coc-tsserver coc-python coc-css coc-html coc-java
" coc-sql coc-yaml coc-xml

call plug#begin('~/.vim/plugged')

Plug 'kaicataldo/material.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'udalov/kotlin-vim'
Plug 'plasticboy/vim-markdown'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'haishanh/night-owl.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'itchyny/lightline.vim'


call plug#end()

" Theme
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
   
if (has('termguicolors'))
  set termguicolors
endif

syntax enable

" Oceanic Theme                                  
"let g:material_style='oceanic'                  
"let g:airline_theme = 'material'                
"let g:material_terminal_italics = 1             
"let g:material_theme_style = 'ocean'            
"set background=dark                             
"colorscheme material

" Nightowl Theme
"colorscheme night-owl

" PaleNight Theme
colorscheme palenight
let g:airline_theme = "palenight"
let g:lightline = { 'colorscheme': 'palenight' }

" Solarized Theme
"set background=dark
"colorscheme solarized8_high

set laststatus=2

" General 
let mapleader = " "
let g:ctrlp_user_command = ['.git/','git --git-dir=%s/.git ls-files -oc --exclude-standard'] 
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

" Disable Arrow keys 
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
