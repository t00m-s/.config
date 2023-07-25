vim.g.exe = "prettierd"
vim.g.neofmat_only_msg_on_error = 1
-- Create the autocmd group
vim.cmd([[
  augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END
]])
