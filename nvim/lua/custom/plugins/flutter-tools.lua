local capabilities = vim.lsp.protocol.make_client_capabilities()
local lsp = dofile '/home/tom/.config/nvim/after/plugin/lsp.lua'
local on_attach = lsp.on_attach

return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  opts = {
    lsp = {
      on_attach = on_attach,
    },
  },
}
