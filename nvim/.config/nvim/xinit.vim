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
"""aaaaa


call plug#begin(stdpath('data').'/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'cjrh/vim-conda'

call plug#end()

let g:airline_poweline_fonts = 1

let mapleader = " "
imap jk <Esc>

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

"coc tab autocomplete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"====

" let g:python3_host_prog = '~\anaconda3\envs\neovim\python.exe'
