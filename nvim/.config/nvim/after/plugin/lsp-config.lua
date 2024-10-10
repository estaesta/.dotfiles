local lspconfig = require('lspconfig')
local configs = require 'lspconfig.configs'
--
-- -- Configure it
-- configs.blade = {
--   default_config = {
--     -- Path to the executable: laravel-dev-generators
--     cmd = { "laravel-dev-tools", "lsp" },
--     filetypes = { 'blade' },
--     root_dir = function(fname)
--       return lspconfig.util.find_git_ancestor(fname)
--     end,
--     settings = {},
--   },
-- }
-- -- Set it up
-- lspconfig.blade.setup {
--   -- Capabilities is specific to my setup.
--   vim.lsp.set_log_level("error")
-- }
--
-- local cmp_nvim_lsp = require "cmp_nvim_lsp"
--
-- -- lspconfig.clangd.setup {
-- --   on_attach = on_attach,
-- --   capabilities = cmp_nvim_lsp.default_capabilities(),
-- --   cmd = {
-- --     "clangd",
-- --     "--offset-encoding=utf-16",
-- --   },
-- -- }


-- configs.htmx = {
--   default_config = {
--     filetypes = { "html", "jinja.html", "htmldjango" },
--   },
-- }
lspconfig.htmx.setup {
  filetypes = { "html", "jinja.html", "htmldjango" },
}
