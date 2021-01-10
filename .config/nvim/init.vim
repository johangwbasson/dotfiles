"
" VIM PLUG
"

" Install vim-plug automatically
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


" Plugins
call plug#begin('~/.vim/plugged')

" - Theme
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'

" - Search
Plug 'jremmen/vim-ripgrep'
Plug 'ctrlpvim/ctrlp.vim'

" - Undo
Plug 'mbbill/undotree'

" - Code Complettion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" - Git
Plug 'tpope/vim-fugitive'

call plug#end()

"
" TRUE COLORS
"
if (has("termguicolors"))
  set termguicolors
endif


"
" THEME
"
set background=dark
colorscheme palenight
let g:airline_theme = "palenight"
let g:lightline = { 'colorscheme': 'palenight' }


" 
" GENERAL SETTINGS
"

filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

set noerrorbells
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set smartindent
set nu
set nowrap
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

set undodir=~/.config/nvim/undodir
set undofile

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

set colorcolumn=120

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

" leader is a key that allows you to have your own "namespace" of keybindings.
" You'll see it a lot below as <leader>
let mapleader = ","

"
" COC
"
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-css', 'coc-eslint', 'coc-html', 'coc-java', 'coc-markdownlint', 'coc-python', 'coc-sql', 'coc-tsserver', 'coc-xml']

"
" RIPGREP
"
if executable('rg')
    let g:rg_derive_root='true'
endif

"
" CTRLP
"
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/build/*,*/node_modules/*,*/.class,*/.jar,*/dist/*
let g:ctrlp_use_catching = 0


" 
" KEYBOARD SHORTCUTS
"

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v

" Quick buffer switching - like cmd-tab'ing
nnoremap <leader><leader> <c-^>

" Jump between windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Show undo tree
nnoremap <leader>u :UndotreeShow<CR>

