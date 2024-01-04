require('conform').setup {
  formatters_by_ft = {
    lua = { 'stylua' },
    dart = { 'dart_format' },
    rust = { 'rustfmt' },
    python = { 'ruff' },
    ['_'] = { 'prettier' },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    lsp_fallback = false,
  },
  notify_on_error = false,
}
