return {
  'coffebar/neovim-project',
  opts = {
    projects = { -- define project roots
      '~/dev/*',
      '~/.config/*',
    },
    picker = {
      type = 'telescope',
    },
  },
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim' },
    { 'Shatur/neovim-session-manager' },
  },
  lazy = false,
  priority = 100,
  keys = {
    { '<leader>pl', '<CMD>NeovimProjectDiscover<CR>', desc = '[P]roject [L]ist' },
  },
}
