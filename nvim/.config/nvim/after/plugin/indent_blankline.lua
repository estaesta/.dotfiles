-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
-- require('indent_blankline').setup {
--   char = '┊',
--   show_trailing_blankline_indent = false,
-- }
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("ibl").setup {
    -- space_char_blankline = " ",
    -- show_current_context = true,
    -- show_current_context_start = true,
}
