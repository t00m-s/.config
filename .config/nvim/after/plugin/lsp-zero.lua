-- [[ Configure LSP ]]
--  This function gets run when an LSP connects to a particular buffer.
local lsp_zero = require 'lsp-zero'
lsp_zero.on_attach(function(client, bufnr)
  vim.keymap.set('n', '<leader>gd', function()
    vim.lsp.buf.definition()
  end, { buffer = bufnr, remap = false, desc = '[G]o to [D]efinition' })
  vim.keymap.set('n', 'K', function()
    vim.lsp.buf.hover()
  end, { buffer = bufnr, remap = false, desc = 'Hover' })
  vim.keymap.set('n', '<leader>ss', function()
    vim.lsp.buf.workspace_symbol()
  end, { buffer = bufnr, remap = false, desc = 'Work[S]pace [S]ymbol' })
  vim.keymap.set('n', '<leader>oo', function()
    vim.diagnostic.open_float()
  end, { buffer = bufnr, remap = false, desc = '[O]pen Fl[o]at' })
  vim.keymap.set('n', '[d', function()
    vim.diagnostic.goto_next()
  end, { buffer = bufnr, remap = false, desc = 'Go to next diagnostic' })
  vim.keymap.set('n', ']d', function()
    vim.diagnostic.goto_prev()
  end, { buffer = bufnr, remap = false, desc = 'Go to previous diagnostic' })
  vim.keymap.set('n', '<leader>ca', function()
    vim.lsp.buf.code_action()
  end, { buffer = bufnr, remap = false, desc = '[C]ode [A]ction' })
  vim.keymap.set('n', '<leader>vr', function()
    vim.lsp.buf.references()
  end, { buffer = bufnr, remap = false, desc = 'Show [V]ariable [R]eferences' })
  vim.keymap.set('n', '<leader>rn', function()
    vim.lsp.buf.rename()
  end, { buffer = bufnr, remap = false, desc = '[R]e[N]ame' })
  vim.keymap.set('i', '<C-h>', function()
    vim.lsp.buf.signature_help()
  end, { buffer = bufnr, remap = false, desc = 'Signature Help' })
end)

require('mason').setup {}
require('mason-lspconfig').setup {
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
}

local cmp = require 'cmp'
local cmp_action = lsp_zero.cmp_action()
cmp.setup {
  sources = {
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'luasnip', keyword_length = 2 },
    { name = 'buffer', keyword_length = 3 },
  },
  formatting = {
    fields = { 'abbr', 'kind', 'menu' },
    format = require('lspkind').cmp_format {
      mode = 'symbol_text',
      maxwidth = function()
        return math.floor(0.45 * vim.o.columns)
      end,
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
    },
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    ['<CR>'] = cmp.mapping.confirm { select = false, behavior = cmp.ConfirmBehavior.Replace },
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
}
