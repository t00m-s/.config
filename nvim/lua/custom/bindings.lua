vim.api.nvim_set_keymap('n', '<leader>fs', ':w<CR>', { noremap = true, silent = true }) -- space fs to save file
vim.api.nvim_set_keymap('n', '<leader>qq', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>qa', ':qa!<CR>', { noremap = true })
-- Copy and paste to system clipboard
vim.api.nvim_set_keymap('n', '<leader>cc', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>cv', '"+p', { noremap = true })

vim.api.nvim_set_keymap('v', '<leader>cc', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>cv', '"+p', { noremap = true })
-- When deleting with x, this does not save to registers
vim.api.nvim_set_keymap('n', 'x', '"_x', { noremap = true })

-- Opens the file manager in nvim
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Split windows management
vim.keymap.set('n', '<leader>sv', vim.cmd.vsp)
vim.keymap.set('n', '<leader>sh', vim.cmd.sp)
-- Resize windows size
vim.api.nvim_set_keymap('n', '<Right>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', ':vertical resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', ':horizontal resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Up>', ':horizontal resize +5<CR>', { noremap = true, silent = true })

-- Switch to a different window
vim.api.nvim_set_keymap('n', '<C-Left>', '<C-W>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Up>', '<C-W>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', '<C-W>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', '<C-W>l', { noremap = true, silent = true })

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
