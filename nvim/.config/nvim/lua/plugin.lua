-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
	--use {
	--    'nvim-telescope/telescope-fzf-native.nvim', run = 'make',
	--    cond = vim.fn.executable 'make' == 1
	--}

	use({ "ellisonleao/gruvbox.nvim" })

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-context")
	use("theprimeagen/harpoon")
	use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
}
	use("mbbill/undotree")

	-- git related plugin
	use("tpope/vim-fugitive")
	use("tpope/vim-rhubarb")
	use("lewis6991/gitsigns.nvim")
	-- nvim v0.7.2
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "https://github.com/folke/neodev.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
			{ "honza/vim-snippets" },
			{ "onecentlin/laravel-blade-snippets-vscode" },
		},
	})

	use("folke/zen-mode.nvim")
	-- use("github/copilot.vim")
	-- use {
	-- 	"supermaven-inc/supermaven-nvim",
	-- 	config = function()
	-- 		require("supermaven-nvim").setup({
	-- 			keymaps = {
	-- 				accept_suggestion = "<C-Space>",
	-- 				clear_suggestion = "<C-]>",
	-- 				accept_word = "<C-j>",
	-- 			},
	-- 		})
	-- 	end,
	-- }
	use("nvim-lualine/lualine.nvim")    -- Fancier statusline
	use("lukas-reineke/indent-blankline.nvim") -- Add indentation guides even on blank lines
	use("numToStr/Comment.nvim")        -- "gc" to comment visual regions/lines
	use("tpope/vim-sleuth")             -- Detect tabstop and shiftwidth automatically
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		-- tag = 'nightly' -- optional, updated every week. (see issue #1193)
	})
	-- vim polyglot
	-- use('sheerun/vim-polyglot')
	use("tpope/vim-obsession")
	use("lambdalisue/suda.vim")
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- HTML
	-- use 'mattn/emmet-vim'
	-- use 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
	use("tpope/vim-surround")
	-- use 'phaazon/hop.nvim'
	use("AndrewRadev/tagalong.vim")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- flutter dart
	-- use 'dart-lang/dart-vim-plugin'
	-- use 'Neevash/awesome-flutter-snippets'

	-- markdown
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

	-- latex
	use('lervag/vimtex')

	-- neoformat
	use("sbdchd/neoformat")

	-- vimwiki
	use("vimwiki/vimwiki")
	use("img-paste-devs/img-paste.vim")

	-- colorizer
	use("NvChad/nvim-colorizer.lua")
	use({
		"roobert/tailwindcss-colorizer-cmp.nvim",
		-- optionally, override the default options:
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
		end,
	})
	-- use({
	-- 	"Jezda1337/nvim-html-css",
	-- 	requires = {
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 		"nvim-lua/plenary.nvim"
	-- 	},
	-- 	config = function()
	-- 		require("html-css"):setup()
	-- 	end
	-- })
	-- use({"ESSO0428/nvim-html-css",
	--        requires = {
	--            "nvim-treesitter/nvim-treesitter",
	--            "nvim-lua/plenary.nvim"
	--        },
	-- })
	--
	-- use({
	--   "jackMort/ChatGPT.nvim",
	-- 	config = function()
	-- 	  require("chatgpt").setup()
	-- 	end,
	-- 	requires = {
	-- 	  "MunifTanjim/nui.nvim",
	-- 	  "nvim-lua/plenary.nvim",
	-- 	  "nvim-telescope/telescope.nvim"
	-- 	}
	-- })

	-- zola
	use({
		"yorik1984/zola.nvim",
		requires = {
			"Glench/Vim-Jinja2-Syntax",
			-- "cespare/vim-toml",             -- for Neovim ⩽ 0.6.0
		},
	})

	-- go
	use({
		"leoluz/nvim-dap-go",
		ft = { "go" },
		requires = { "mfussenegger/nvim-dap" },
		config = function()
			require("dap-go").setup()
		end,
	})
	-- use({
	-- 	"olexsmir/gopher.nvim",
	-- 	ft = { "go" },
	-- 	config = function()
	-- 		require("gopher").setup()
	-- 	end,
	-- 	run = function()
	-- 		vim.cmd([[silent! GoInstallDeps]])
	-- 	end,
	-- })
	use 'ray-x/go.nvim'
	use 'ray-x/guihua.lua' -- recommended if need floating window support

	use("kosayoda/nvim-lightbulb")
	use("Jezda1337/cmp_bootstrap")

	-- python debugger
	use({
		"mfussenegger/nvim-dap-python",
		ft = { "python" },
		requires = { "mfussenegger/nvim-dap" },
		config = function()
			require("dap-python").setup()
		end,
	})
	-- dap-ui
	use({
		"rcarriga/nvim-dap-ui",
		requires = { "mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio"
		},
		config = function()
			require("dapui").setup()
		end,
	})

	use 'echasnovski/mini.ai'
end)
