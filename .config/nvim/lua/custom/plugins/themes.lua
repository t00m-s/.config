return {
  -- {
  --   'maxmx03/solarized.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.o.background = 'dark' -- or 'light'
  --     require('solarized').setup {}
  --     vim.cmd.colorscheme 'solarized'
  --   end,
  -- },
  {

    -- Kanagawa comes in three variants:

    -- kanagawa-wave the default heart-warming theme,
    -- kanagawa-dragon for those late-night sessions
    -- kanagawa-lotus for when you're out in the open.
    'rebelot/kanagawa.nvim',
    config = function()
      vim.cmd 'colorscheme kanagawa-wave'
    end,
  },
}
