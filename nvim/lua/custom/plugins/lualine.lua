return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local opts = {
      options = {
        theme = 'gruvbox',
      },
    }
    require('lualine').setup(opts)
  end,
}
