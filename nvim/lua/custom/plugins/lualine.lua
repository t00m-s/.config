return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- opts = {
    --   options = {
    --     theme = 'gruvbox',
    --   },
    -- }
    require('lualine').setup()
  end,
}
