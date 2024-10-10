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

local function open_nvim_tree(data)

  -- buffer is a [No Name]
  -- local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  -- if not no_name and not directory then
  if not directory then
    return
  end

  -- change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
