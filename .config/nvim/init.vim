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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rhysd/vim-gfm-syntax'
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
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'udalov/kotlin-vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'hdiniz/vim-gradle'

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

let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
autocmd BufRead,BufNew,BufNewFile README.md setlocal ft=markdown.gfm

" General 
let mapleader = " "
let g:ctrlp_user_command = ['.git/','git --git-dir=%s/.git ls-files -oc --exclude-standard'] 
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0
set clipboard+=unnamedplus

nnoremap <esc> :noh<return><esc>

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

" Nerd Tree Git
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
" Nerd Tree 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Java 
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
nmap <leader>jii <Plug>(JavaComplete-Imports-Add)

imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
imap <C-j>ii <Plug>(JavaComplete-Imports-Add)

nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)

imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)

nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)

imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)

