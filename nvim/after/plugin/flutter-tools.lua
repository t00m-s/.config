local lsp = dofile '/home/tom/.config/nvim/after/plugin/lsp.lua'
local lsp_on_attach = lsp.on_attach
local lsp_capabilities = lsp.capabilities
require('flutter-tools').setup {
  on_attach = lsp_on_attach,
  capabilities = lsp_capabilities,
}
