" vim-plug: A minimalist Vim plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Plugins
Plug 'tpope/vim-surround'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf.vim'

call plug#end()

" General Settings
syntax enable
set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set relativenumber
set showmode
set wrap
" set cursorline
" Search Settings

set incsearch
set hlsearch
set ignorecase
set smartcase

" Persistent undo
set undodir=~/.vim/undodir
set undofile

" Visual Settings
set termguicolors
colorscheme catppuccin_mocha

" Key Mappings
" Toggle line numbers with F5
nnoremap <F5> :set relativenumber!<CR>

" Remap leader key to space
map <Space> <Leader>

nnoremap <leader><CR> :nohl<CR>
nnoremap <Leader>~ viw~

" Enable command-line completion
set wildmenu
set wildmode=list:longest,full

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
