-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
	--use {
	--    'nvim-telescope/telescope-fzf-native.nvim', run = 'make',
	--    cond = vim.fn.executable 'make' == 1
	--}

	use({
		'sainnhe/gruvbox-material',
		config = function()
			vim.cmd('colorscheme gruvbox-material')
		end
	})

	use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
	use('theprimeagen/harpoon')
	use('mbbill/undotree')

	-- git related plugin
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'
	use 'lewis6991/gitsigns.nvim'

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	use("folke/zen-mode.nvim")
	use("github/copilot.vim")
	use 'nvim-lualine/lualine.nvim' -- Fancier statusline
	use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
	use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
	use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		-- tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	-- vim polyglot
	use('sheerun/vim-polyglot')
	use 'tpope/vim-obsession'
	use 'lambdalisue/suda.vim'
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
	end}

	-- HTML
	use 'mattn/emmet-vim'
	-- use 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
	use 'tpope/vim-surround'
	-- use 'phaazon/hop.nvim'
	use 'AndrewRadev/tagalong.vim'
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	-- flutter dart
	-- use 'dart-lang/dart-vim-plugin'
	-- use 'Neevash/awesome-flutter-snippets'
end)
