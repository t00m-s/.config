return {
  'danymat/neogen',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = true,
  keys = {
    { 'n', '<leader>ga', "<CMD>lua require('neogen').generate()<CR>", { noremap = true, silent = true, description = '[G]enerate [A]nnotations' } },
  },
}
