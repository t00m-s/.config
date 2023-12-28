vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { import = 'custom.plugins' },
}, {})
require 'custom.settings'
require 'custom.autogrups'
require 'custom.bindings'
vim.cmd [[colorscheme rose-pine]]
if vim.g.neovide then
  vim.o.guifont = 'JetbrainsMono Nerd Font:h15'

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format('%x', math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.7
  vim.g.transparency = 0.7
  vim.g.neovide_background_color = '#0f1117' .. alpha()
  vim.g.neovide_fullscreen = true
  vim.g.neovide_theme = 'auto'
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
