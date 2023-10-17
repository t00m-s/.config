vim.g.mapleader = " "
vim.g.maplocalleader = " "
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
vim.opt.rtp:prepend(lazypath)
return require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup()
			vim.cmd("colorscheme rose-pine")
		end,
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
		{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		-- LSP Support
		{
			"neovim/nvim-lspconfig",
			dependencies = {
				{ "hrsh7th/cmp-nvim-lsp" },
			},
		},
		-- Autocompletion
		{
			"hrsh7th/nvim-cmp",
			dependencies = {
				{ "L3MON4D3/LuaSnip" },
			},
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
		version = "*",
		opts = {},
	},
	"f-person/git-blame.nvim",
	"tpope/vim-commentary",
	{
		"dgagn/diagflow.nvim",
		event = "LspAttach",
		opts = {},
	},
	"onsails/lspkind.nvim",
	"terryma/vim-multiple-cursors",
	"elentok/format-on-save.nvim",
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},
	{
		"m4xshen/smartcolumn.nvim",
		opts = {},
	},
	{
		"folke/twilight.nvim",
		opts = {},
	},
	{
		"brenoprata10/nvim-highlight-colors",
		opts = {},
	},
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup()
		end,
	},
	"lambdalisue/suda.vim",
	"xiyaowong/transparent.nvim",
	"github/copilot.vim",
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = true,
	},
})
