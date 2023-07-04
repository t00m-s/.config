vim.keymap.set("n", "<leader>g", vim.cmd.Git)
vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push<CR>", {noremap = true, silent = true})
