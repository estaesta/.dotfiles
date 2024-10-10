local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"lua_ls",
})

-- configure terraformls
lsp.configure("terraformls", {
	-- cmd = { "terraform-ls", "serve" },
	filetypes = { "terraform", "tf", "hcl" },
})

--configure tsserver
-- lsp.configure("tsserver", {
-- 	on_attach = function(client, bufnr)
-- 		print('hello tsserver')
-- 	  end
-- })

-- set tf files filetype as terraform
vim.cmd("au BufNewFile,BufRead *.tf set filetype=terraform")

-- configure tailwindcss for jinja.html filetypes
lsp.configure("tailwindcss", {
	filetypes = {
		"jinja.html",
		"aspnetcorerazor",
		"astro",
		"astro-markdown",
		"blade",
		"clojure",
		"django-html",
		"htmldjango",
		"edge",
		"eelixir",
		"elixir",
		"ejs",
		"erb",
		"eruby",
		"gohtml",
		"haml",
		"handlebars",
		"hbs",
		"html",
		"html-eex",
		"heex",
		"jade",
		"leaf",
		"liquid",
		"markdown",
		"mdx",
		"mustache",
		"njk",
		"nunjucks",
		"php",
		"razor",
		"slim",
		"twig",
		"css",
		"less",
		"postcss",
		"sass",
		"scss",
		"stylus",
		"sugarss",
		"javascript",
		"javascriptreact",
		"reason",
		"rescript",
		"typescript",
		"typescriptreact",
		"vue",
		"svelte",
		"jinja.html",
		"templ",
	},
	init_options = {
		userLanguages = {
			templ = "html"
		}
	}
})

-- configure emmet_ls for jinja.html filetypes
lsp.configure("html", {
	filetypes = { "html", "htmldjango", "jinja.html", "templ" },
})

-- Fix Undefined global 'vim'
lsp.configure("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

-- configure gopls
-- use placeholder
lsp.configure("gopls", {
	settings = {
		gopls = {
			usePlaceholders = true,
		},
	},
	filetypes = { "go", "gomod", "gowork", "gotmpl", "templ" },
})

-- configure ltex-ls


local has_words_before = function()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	-- ["<C-y>"] = cmp.mapping.confirm({ select = true }),
	["<C-Tab>"] = cmp.mapping.complete(),
	["<CR>"] = cmp.mapping.confirm({ select = false }),
	-- ['<C-f>'] = cmp.mapping.scroll_docs(-4),
	-- ['<C-b>'] = cmp.mapping.scroll_docs(4),
	["<C-e>"] = cmp.mapping.abort(),
	["<Tab>"] = cmp.mapping(function(fallback)
		if cmp.visible() then
			cmp.select_next_item()
		-- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
		-- they way you will only jump inside the snippet region
		elseif luasnip.expand_or_jumpable() then
			luasnip.expand_or_jump()
		elseif has_words_before() then
			cmp.complete()
		else
			fallback()
		end
	end, { "i", "s" }),

	["<S-Tab>"] = cmp.mapping(function(fallback)
		if cmp.visible() then
			cmp.select_prev_item()
		elseif luasnip.jumpable(-1) then
			luasnip.jump(-1)
		else
			fallback()
		end
	end, { "i", "s" }),
})

-- disable completion with tab
-- this helps with copilot setup
-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
	formatting = {
		format = require("tailwindcss-colorizer-cmp").formatter,
	},
	mapping = cmp_mappings,
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = "E",
		warn = "W",
		hint = "H",
		info = "I",
	},
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	-- if client.name == "eslint" then
	-- 	vim.cmd.LspStop("eslint")
	-- 	return
	-- end

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
	vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "luasnip" },
		{ name = "path" },
	},
})

cmp.setup.filetype("html", {
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "luasnip" },
		{ name = "path" },
		{ name = "bootstrap" },
	},
})

--[[ cmp.config.formatting = {
  format = require("tailwindcss-colorizer-cmp").formatter
} ]]

-- vim.lsp.set_log_level("debug")
