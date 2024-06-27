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
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
