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
local telescope = require 'telescope'
pcall(telescope.load_extension, 'fzf')
telescope.load_extension 'project'
telescope.load_extension 'notify'
-- require('telescope').load_extension 'project'
local telescope_builtin = require 'telescope.builtin'
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', telescope_builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><leader>', telescope_builtin.buffers, { desc = '[ ] Find existing buffers' })

vim.keymap.set('n', '<leader>gf', telescope_builtin.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fw', telescope_builtin.grep_string, { desc = '[F]ind [W]ord' })
