return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    lazygit = { enabled = true },
    scope = { enabled = true },
    dashboard = { enabled = true, example = 'github' },
    input = { enabled = true },
    animate = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    terminal = { enabled = true },
  },
  keys = {
    {
      '<leader>tt',
      function()
        Snacks.terminal.toggle()
      end,
      desc = '[T]oggle [T]erminal',
    },
    {
      '<leader>lg',
      function()
        Snacks.lazygit()
      end,
      desc = '[L]azy[G]it',
    },
  },
}
