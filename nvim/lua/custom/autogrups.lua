-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Display diagnostics as virtual text only if not in insert mode
vim.api.nvim_create_autocmd('InsertEnter', {
  pattern = '*',
  callback = function()
    vim.diagnostic.config {
      virtual_text = false,
    }
  end,
})
vim.api.nvim_create_autocmd('InsertLeave', {
  pattern = '*',
  callback = function()
    vim.diagnostic.config {
      virtual_text = true,
    }
  end,
})
