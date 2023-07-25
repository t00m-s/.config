vim.keymap.set("n", "<leader>g", vim.cmd.Git)
vim.api.nvim_set_keymap("n", "<leader>gp", ":Git pull<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>gP", ":Git push<CR>", {noremap = true, silent = true})
