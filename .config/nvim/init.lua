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
  {
    import = 'custom.plugins',
  },
}, {
  checker = {
    enabled = true,
    notify = true,
    frequency = 86400,
  },
  ui = {
    border = 'rounded',
  },
})
vim.cmd [[set clipboard=unnamedplus]]
require 'custom.settings'
require 'custom.autogrups'
require 'custom.bindings'
if vim.g.neovide then
  vim.o.guifont = 'JetbrainsMono Nerd Font:h14'

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format('%x', math.floor(255 * (vim.g.transparency or 0.8)))
  end
  vim.g.neovide_transparency = 0.85
  vim.g.transparency = 0.85
  vim.g.neovide_background_color = '#0f1117' .. alpha()
  vim.g.neovide_theme = 'auto'
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_fullscreen = true
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
