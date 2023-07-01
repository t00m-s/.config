local lsp = require('lsp-zero').preset({
    manage_nvim_cmp = {
        set_sources = 'reccomended'
    }
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>=", function ()
        vim.lsp.buf.format { async = true }
    end, opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
cmp.setup({
    mapping = {
        -- Tab key to confirm completion
        ['<CR>'] = cmp.mapping.confirm( {select = true }),
        -- Navigate between snippet placeholder
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    },
    completion = {
        completeopt = 'menu, menuone, noinsert',
    }
})
