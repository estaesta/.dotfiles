set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set timeoutlen=80
set nohlsearch
set hidden
set noerrorbells
set ignorecase
set smartcase
set scrolloff=8
set clipboard=unnamed
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile


call plug#begin(stdpath('data').'/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'ThePrimeagen/vim-be-good'

"telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
call plug#end()

let g:airline_poweline_fonts = 1

let mapleader = " "
imap jk <Esc>

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

"" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
"
"inoremap <silent><expr> <Tab>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<Tab>" :
"      \ coc#refresh()
"""""

let g:python3_host_prog = '/bin/python3'
