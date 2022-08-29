
-- normal mode (easymotion-like)
vim.api.nvim_set_keymap("n", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<Leader><Leader>f", "<cmd>HopChar1<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<Leader><Leader>F", "<cmd>HopChar2<CR>", {noremap=true})

-- visual mode (easymotion-like)
vim.api.nvim_set_keymap("v", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap=true})
vim.api.nvim_set_keymap("v", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap=true})
vim.api.nvim_set_keymap("v", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap=true})
vim.api.nvim_set_keymap("v", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap=true})
vim.api.nvim_set_keymap("v", "<Leader><Leader>f", "<cmd>HopChar1<CR>", {noremap=true})
vim.api.nvim_set_keymap("v", "<Leader><Leader>F", "<cmd>HopChar2<CR>", {noremap=true})


-- -- normal mode (sneak-like)
-- vim.api.nvim_set_keymap("n", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
-- vim.api.nvim_set_keymap("n", "S", "<cmd>HopChar2BC<CR>", {noremap=false})
--
-- -- visual mode (sneak-like)
-- vim.api.nvim_set_keymap("v", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
-- vim.api.nvim_set_keymap("v", "S", "<cmd>HopChar2BC<CR>", {noremap=false})

-- place this in one of your configuration file(s)
-- vim.api.nvim_set_keymap('', '<Leader><Leader>f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", {})
-- vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})
-- vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
-- vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
