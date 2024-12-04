return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  -- Optional dependencies
  dependencies = {
    {
      'echasnovski/mini.icons',
    },
  },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function()
    local opts = {
      columns = {
        'icon',
        'permissions',
        'size',
      },
      view_options = {
        show_hidden = true,
      },
      watch_for_changes = true,
    }
    require('oil').setup(opts)
  end,
}
