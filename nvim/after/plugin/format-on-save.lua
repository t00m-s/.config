local format_on_save = require("format-on-save")
local message_buffer = require("format-on-save.error-notifiers.message-buffer")
local formatters = require("format-on-save.formatters")
format_on_save.setup({

	exclude_path_patterns = {
		"/node_modules/",
		".local/share/nvim/lazy",
		"/.git/",
	},
	experiments = {
		partial_update = "diff", -- or 'line-by-line'
	},

	formatter_by_ft = {
		python = formatters.black,
		lua = formatters.stylua,
	},
	fallback_formatter = {
		formatters.remove_trailing_whitespace,
		formatters.remove_trailing_newlines,
		formatters.lsp,
	},
	run_with_sh = false,
})
