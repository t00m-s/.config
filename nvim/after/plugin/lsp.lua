local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

lsp.setup()

--- LSP Management
require("mason").setup({})
require("mason-lspconfig").setup({
	handlers = {
		lsp.default_setup,
	},
})

local lsp_zero = require("lsp-zero")
local cmp_format = lsp_zero.cmp_format()
--- You need to setup `cmp` after lsp-zero
local cmp = require("cmp")
cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "orgmode" },
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		-- Tab key to confirm completion
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		-- Navigate between snippet placeholder
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
	}),
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	formatting = cmp_format,
})
