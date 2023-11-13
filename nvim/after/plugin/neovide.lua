if vim.g.neovide then
	vim.o.guifont = "Fira Code Nerd Font:h14"
	vim.g.neovide_theme = 'auto'
	vim.g.neovide_transparency = 0.5
	vim.g.transparency = 0.8
	vim.cmd("TransparentDisable")
else
	vim.cmd("TransparentEnable")
end
