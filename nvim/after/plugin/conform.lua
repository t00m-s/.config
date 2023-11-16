require('conform').setup {
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'ruff_format' },
    dart = { 'dart_format' },
    rust = { 'rustfmt' },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
