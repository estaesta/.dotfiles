vim.cmd([[
  let g:copilot_filetypes = {
    \ '*': v:true,
    \ }
  " use <c-p> to trigger copilot
  imap <silent><script><expr> <C-Space> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true
]])
vim.g.copilot_assume_mapped = true
