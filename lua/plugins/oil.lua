return {
  'stevearc/oil.nvim',
  config = function()
      -- Initialize oil.nvim with default settings
      local oil = require 'oil'
      oil.setup({
        columns = {
          "icon",
           -- "permissions",
           -- "size",
           -- "mtime",
        },

        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,

        view_options = {
          -- Show files and directories that start with "."
          show_hidden = true,
          -- This function defines what is considered a "hidden" file
          is_hidden_file = function(name, bufnr)
            local m = name:match("^%.")
            return m ~= nil
          end,
          -- This function defines what will never be shown, even when `show_hidden` is set
          is_always_hidden = function(name, bufnr)
            return false
          end,
        },
      })
  end,

  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
