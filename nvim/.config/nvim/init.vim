set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set timeoutlen=500
set nohlsearch
set hidden
set noerrorbells
set ignorecase
set smartcase
set scrolloff=8
"set clipboard=unnamed
set clipboard+=unnamedplus
" set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set cmdheight=1
set mouse=a
" set foldmethod=indent
set nofoldenable
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()


call plug#begin(stdpath('data').'/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bling/vim-airline'
Plug 'ThePrimeagen/vim-be-good'
Plug 'tpope/vim-obsession'
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

"telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'windwp/nvim-ts-autotag'

" prettier
Plug 'sbdchd/neoformat'

"HTML
Plug 'mattn/emmet-vim'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'AndrewRadev/tagalong.vim'

"PHP
" Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

" Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-scripts --no-dev -o'}

"nvim tree
" requires
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

"language support
Plug 'sheerun/vim-polyglot'

"auto pair
Plug 'jiangmiao/auto-pairs'

"indent
Plug 'tpope/vim-sleuth'
call plug#end()

let g:airline_poweline_fonts = 1

nnoremap <SPACE> <Nop>
let mapleader = " "
imap jk <Esc>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 10gt

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

let g:python3_host_prog = '/bin/python3'

"run python3
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" augroup fmt
"  autocmd!
"  autocmd BufWritePre * undojoin | Neoformat
" augroup END

"emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,php,blade EmmetInstall
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
  \    'php' : {
  \        'extends' : 'html',
  \        'filters' : 'html,c',
  \    },
  \ }

" nmap <c-t> :vs<bar>:b#<CR>

"prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
autocmd FileType "html, js" setlocal ts=2 sts=2 sw=2

lua require('Comment').setup()
" let g:bracey_server_allow_remote_connections = 1
" let g:bracey_server_path = 'http://localhost'

"tagalong
let g:tagalong_filetypes = ['html']

autocmd Filetype json let g:indentLine_enabled = 0

let php_htmlInString = 1
let php_folding = 1
autocmd FileType php setlocal autoindent

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-blade', 'coc-html', 'coc-emmet', 'coc-html', '@yaegassy/coc-intelephense']
