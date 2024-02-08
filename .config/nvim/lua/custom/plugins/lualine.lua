return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      theme = 'solarized',
      icons_enabled = true,
      disabled_filetypes = {
        'NvimTree',
      },
    },
  },
}
