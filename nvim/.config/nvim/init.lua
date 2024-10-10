require("remap")
require("plugin")
require("set")
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  filetype plugin on
]])
-- vim.cmd([[
--   augroup _templ
--   autocmd!
--   autocmd BufRead,BufEnter *.templ set filetype=templ
--   augroup end
-- ]])
-- -- set spell in tex files to indonesian
-- vim.cmd([[
--   augroup _tex
--   autocmd!
--   autocmd BufRead,BufEnter *.tex setlocal spell spelllang=id
--   augroup end
-- ]])
