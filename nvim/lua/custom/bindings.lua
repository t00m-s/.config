local vim_keymap_set = vim.keymap.set
vim_keymap_set('n', '<leader>fs', ':w<CR>', { noremap = true, silent = true, desc = '[F]ile [S]ave' }) -- space fs to save file
vim_keymap_set('n', '<leader>qq', ':q!<CR>', { noremap = true, silent = true, desc = '[Q]uit!' })
vim_keymap_set('n', '<leader>qa', ':qa!<CR>', { noremap = true, silent = true, desc = '[Q]uit [A]ll!' })
-- Copy and paste to system clipboard
vim_keymap_set({ 'n', 'v' }, '<leader>cc', '"+y', { noremap = true, silent = true, desc = '[C]opy [C]lipboard' })
vim_keymap_set({ 'n', 'v' }, '<leader>cv', '"+p', { noremap = true, silent = true, desc = '[C]opy [V]' })

-- When deleting with x, this does not save to registers
vim_keymap_set('n', 'x', '"_x', { noremap = true, silent = true, desc = '' })

-- Split windows management
vim_keymap_set('n', '<leader>sv', vim.cmd.vsp, { noremap = true, silent = true, desc = '[S]plit [V]ertical' })
vim_keymap_set('n', '<leader>sh', vim.cmd.sp, { noremap = true, silent = true, desc = '[S]plit [H]orizontal' })
-- Resize windows size
vim_keymap_set('n', '<Right>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim_keymap_set('n', '<Left>', ':vertical resize -5<CR>', { noremap = true, silent = true })
vim_keymap_set('n', '<Down>', ':horizontal resize -5<CR>', { noremap = true, silent = true })
vim_keymap_set('n', '<Up>', ':horizontal resize +5<CR>', { noremap = true, silent = true })

-- Switch to a different window
vim_keymap_set('n', '<C-Left>', '<C-W>h', { noremap = true, silent = true })
vim_keymap_set('n', '<C-Up>', '<C-W>k', { noremap = true, silent = true })
vim_keymap_set('n', '<C-Down>', '<C-W>j', { noremap = true, silent = true })
vim_keymap_set('n', '<C-Right>', '<C-W>l', { noremap = true, silent = true })

-- Space is now only used as a leader key
vim_keymap_set({ 'n', 'v' }, '<Space>', '<Nop>', { noremap = true, silent = true })

-- Remap for dealing with word wrap
vim_keymap_set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim_keymap_set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim_keymap_set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = 'Go to previous diagnostic message' })
vim_keymap_set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = 'Go to next diagnostic message' })
vim_keymap_set('n', '<leader>oe', vim.diagnostic.open_float, { noremap = true, silent = true, desc = '[O]pen m[E]ssage' })

-- Select all
vim_keymap_set('n', '<C-a>', 'ggVG', { desc = 'Select all' })
-- Tab switch buffer
vim_keymap_set('n', '<TAB>', ':bnext<CR>', { desc = 'Next buffer' })
vim_keymap_set('n', '<S-TAB>', ':bprevious<CR>', { desc = 'Previous buffer' })
