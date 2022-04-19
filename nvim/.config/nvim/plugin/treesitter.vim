lua <<EOF
    local configs = require'nvim-treesitter.configs'
    configs.setup {
    ensure_installed = "all", -- Only use parsers that are maintained
    highlight = { -- enable highlighting
      enable = true, 
    },
    indent = {
      enable = false, -- default is disabled
    }
    }
require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
  },
}
require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_current_scope = { enable = true },
  },
}
require'nvim-treesitter.configs'.setup {
  refactor = {
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
  },
}


EOF



