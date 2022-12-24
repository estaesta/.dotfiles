-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  -- sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        -- { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  actions = {
      open_file = {
          quit_on_open = true
      }
  },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true})
vim.keymap.set("n", "<leader>r", ":NvimTreeRefresh<CR>", {noremap = true})
vim.keymap.set("n", "<leader>n", ":NvimTreeFindFile<CR>", {noremap = true})
