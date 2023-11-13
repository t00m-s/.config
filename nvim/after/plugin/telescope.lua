require('telescope').setup {
	defaults = {
		mappings = {
			i = {
				['<C-u>'] = false,
				['<C-d>'] = false,
			},
		},
	},
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
local telescope = require("telescope.builtin")
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', telescope.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><leader>', telescope.buffers, { desc = '[ ] Find existing buffers' })

vim.keymap.set('n', '<leader>gf', telescope.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fw', telescope.grep_string, { desc = '[F]ind [W]ord' })
