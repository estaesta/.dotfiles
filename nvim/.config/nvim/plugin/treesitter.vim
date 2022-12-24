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
    highlight_current_scope = { enable = true },
    },
  autotag = {
    enable = true,
  }
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
}require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}


EOF



