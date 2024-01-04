-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
-- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
vim.defer_fn(function()
  require('nvim-treesitter.configs').setup {
    ignore_install = {},
    sync_install = true,
    ensure_installed = { 'vim', 'regex', 'lua', 'bash', 'markdown', 'markdown_inline' },

    highlight = {
      enable = true,
      disable = function(lang, buf)
        local max_filesize = 1000 * 1024 -- 1 MB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
    },
    indent = { enable = true },
  }
end, 0)
