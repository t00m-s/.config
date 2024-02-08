require('conform').setup {
  formatters_by_ft = {
    lua = { 'stylua' },
    dart = { 'dart_format' },
    rust = { 'rustfmt' },
    python = { 'ruff' },
    typescript = { 'prettier' },
    javascript = { 'prettier' },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    lsp_fallback = true,
    timeout_ms = 500,
  },
  notify_on_error = false,
}
