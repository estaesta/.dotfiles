require('go').setup({
  -- gofmt= 'golines',
  -- goimports = 'golines',
  -- max_line_len = 90, -- max line length in goline format
})
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})
