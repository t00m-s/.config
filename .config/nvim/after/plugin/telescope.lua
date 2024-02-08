require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = 'smart_case', -- or "ignore_case" or "respect_case"
    },
  },
  defaults = {
    mappings = {
      i = {
        ['<C-h>'] = 'which_key',
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- Enable telescope fzf native, if installed
local telescope = require 'telescope'
telescope.load_extension 'fzf'
telescope.load_extension 'notify'
-- require('telescope').load_extension 'project'
local telescope_builtin = require 'telescope.builtin'
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', telescope_builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><leader>', telescope_builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>gf', telescope_builtin.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fw', function()
  telescope_builtin.grep_string { search = vim.fn.input 'Grep > ' }
end, { desc = '[F]ind [W]ord' })
