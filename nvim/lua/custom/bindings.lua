local nvim_set_keymap = vim.api.nvim_set_keymap
local vim_keymap_set = vim.keymap.set
local opts = { noremap = true, silent = true }
nvim_set_keymap('n', '<leader>fs', ':w<CR>', opts) -- space fs to save file
nvim_set_keymap('n', '<leader>qq', ':q<CR>', { noremap = true })
nvim_set_keymap('n', '<leader>qa', ':qa!<CR>', { noremap = true })
-- Copy and paste to system clipboard
nvim_set_keymap('n', '<leader>cc', '"+y', { noremap = true })
nvim_set_keymap('n', '<leader>cv', '"+p', { noremap = true })

nvim_set_keymap('v', '<leader>cc', '"+y', { noremap = true })
nvim_set_keymap('v', '<leader>cv', '"+p', { noremap = true })

-- When deleting with x, this does not save to registers
nvim_set_keymap('n', 'x', '"_x', opts)

-- Split windows management
vim_keymap_set('n', '<leader>sv', vim.cmd.vsp)
vim_keymap_set('n', '<leader>sh', vim.cmd.sp)
-- Resize windows size
nvim_set_keymap('n', '<Right>', ':vertical resize +5<CR>', opts)
nvim_set_keymap('n', '<Left>', ':vertical resize -5<CR>', opts)
nvim_set_keymap('n', '<Down>', ':horizontal resize -5<CR>', opts)
nvim_set_keymap('n', '<Up>', ':horizontal resize +5<CR>', opts)

-- Switch to a different window
nvim_set_keymap('n', '<C-Left>', '<C-W>h', opts)
nvim_set_keymap('n', '<C-Up>', '<C-W>k', opts)
nvim_set_keymap('n', '<C-Down>', '<C-W>j', opts)
nvim_set_keymap('n', '<C-Right>', '<C-W>l', opts)

-- Space is now only used as a leader key
vim_keymap_set({ 'n', 'v' }, '<Space>', '<Nop>', opts)

-- Remap for dealing with word wrap
vim_keymap_set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim_keymap_set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim_keymap_set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = 'Go to previous diagnostic message' })
vim_keymap_set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = 'Go to next diagnostic message' })
vim_keymap_set('n', '<leader>e', vim.diagnostic.open_float, { noremap = true, silent = true, desc = 'Open floating diagnostic message' })

-- Select all
vim_keymap_set('n', '<C-a>', 'ggVG', { desc = 'Select all' })
-- Tab switch buffer
vim_keymap_set('n', 'te', ':tabedit<CR>', { desc = '[T]ab  [E]dit' })
vim_keymap_set('n', '<TAB>', ':bnext<CR>', { desc = 'Next buffer' })
vim_keymap_set('n', '<S-TAB>', ':bprevious<CR>', { desc = 'Previous buffer' })
