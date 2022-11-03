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
set scrolloff=10
" set clipboard=unnamed
set clipboard+=unnamedplus
" set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set cmdheight=1
set mouse=a
set foldmethod=indent
set nofoldenable
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()



call plug#begin(stdpath('data').'/plugged')
" Plug 'gruvbox-community/gruvbox'
" Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'sainnhe/gruvbox-material'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'natebosch/dartlang-snippets'
" Plug 'bling/vim-airline'
Plug 'nvim-lualine/lualine.nvim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'tpope/vim-obsession'
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'lambdalisue/suda.vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'github/copilot.vim'
Plug 'tpope/vim-fugitive'
" Plug 'karb94/neoscroll.nvim'
" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

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
" Plug 'easymotion/vim-easymotion'
Plug 'phaazon/hop.nvim'


" Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'AndrewRadev/tagalong.vim'

"nvim tree
" requires
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

"language support
Plug 'sheerun/vim-polyglot'

"auto pair
Plug 'windwp/nvim-autopairs'

"indent
Plug 'tpope/vim-sleuth'

"flutter dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'Neevash/awesome-flutter-snippets'

"require luarocks lyaml
Plug 'akinsho/pubspec-assist.nvim'
Plug 'theHamsta/nvim_rocks', {'do': 'pip3 install --user hererocks && python3 -mhererocks . -j2.1.0-beta3 -r3.0.0 && cp nvim_rocks.lua lua'}

"dashboard
" Plug 'glepnir/dashboard-nvim'

"tex 
" Plug 'lervag/vimtex'
call plug#end()

" let g:airline_powerline_fonts = 1

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

" greatest remap
xnoremap <leader>p "_dP

" let g:gruvbox_baby_transparent_mode = 1
" colorscheme gruvbox-material

        " Important!!
        if has('termguicolors')
          set termguicolors
        endif
        " For dark version.
        set background=dark
        " For light version.
        " set background=light
        " Set contrast.
        " This configuration option should be placed before `colorscheme gruvbox-material`.
        " Available values: 'hard', 'medium'(default), 'soft'
        let g:gruvbox_material_ui_contrast = 'high'
        let g:gruvbox_material_visual = 'reverse'
        let g:gruvbox_material_foreground = 'original'
        let g:gruvbox_material_transparent_background = 1
        let g:gruvbox_material_background = 'hard'
        let g:gruvbox_material_diagnostic_text_highlight = 1
        " let g:gruvbox_material_diagnostic_line_highlight = 1
        " For better performance
        let g:gruvbox_material_better_performance = 1
        colorscheme gruvbox-material
" let &fcs='eob: '
" let g:tokyonight_style = "night"

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
autocmd FileType html,javascript,xhtml,xml,css setlocal ts=2 sts=2 sw=2


lua << EOF
require('Comment').setup()
require("nvim-autopairs").setup()
require('pubspec-assist').setup()
-- require("neoscroll").setup()
require("hop").setup()
EOF
" let g:bracey_server_allow_remote_connections = 1
" let g:bracey_server_path = 'http://localhost'

"tagalong
let g:tagalong_filetypes = ['html']

" autocmd Filetype json let g:indentLine_enabled = 0
" autocmd Filetype json let g:indentLine_setConceal = 0

let php_htmlInString = 1
let php_folding = 1
autocmd FileType php setlocal autoindent

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-blade', 'coc-html', 'coc-emmet', 'coc-html', '@yaegassy/coc-intelephense']
let g:coc_node_path = '/home/azazen/.nvm/versions/node/v19.0.0/bin/node'
