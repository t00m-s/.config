local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.rtp:prepend(lazypath)
return require("lazy").setup({

	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
        config = function()
            vim.cmd[[colorscheme tokyonight]]
        end
	},
	{
		"nvim-treesitter/nvim-treesitter", -- Better syntax highlightings
		config = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},
	"mbbill/undotree",
	"tpope/vim-fugitive",
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{
		"folke/trouble.nvim",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	"nvim-tree/nvim-web-devicons",
	-- Terminal popup
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup()
		end,
	},
	"f-person/git-blame.nvim",
	"tpope/vim-commentary",
	{
		"dgagn/diagflow.nvim",
		config = function()
			require("diagflow").setup()
		end,
	},
	"onsails/lspkind.nvim",
	"terryma/vim-multiple-cursors",
    "elentok/format-on-save.nvim",
})
