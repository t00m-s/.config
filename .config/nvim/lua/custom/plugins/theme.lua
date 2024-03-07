return {
  'maxmx03/solarized.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = 'dark' -- or 'light'
    require('solarized').setup {}
    vim.cmd.colorscheme 'solarized'
  end,
}
