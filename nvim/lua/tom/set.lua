-- Set space as leader, adds relative numbers, adds mouse
vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.mouse = "a"

-- Set tab width to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Backup management
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false -- Disables highlighting of previous search
vim.opt.incsearch = true -- Searches as you type
vim.opt.ignorecase = true -- Gets all permutations of the search
vim.opt.smartcase = true -- Ignores the first capital letter unless the search has that

vim.opt.termguicolors = true -- Colors

vim.opt.scrolloff = 8 -- Atleast 8 rows when jumping
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
-- Keybindings

vim.api.nvim_set_keymap("n", "<leader>fs", ":w<CR>", { noremap = true, silent = true }) -- space fs to save file
vim.api.nvim_set_keymap("n", "<leader>qq", ":q<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>qa", ":qa!<CR>", { noremap = true })
-- Copy and paste to system clipboard
vim.api.nvim_set_keymap("n", "<leader>cc", '"+y', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>cv", '"+p', { noremap = true })

vim.api.nvim_set_keymap("v", "<leader>cc", '"+y', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>cv", '"+p', { noremap = true })
-- When deleting with x, this does not save to registers
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true })

-- Opens the file manager in nvim
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Split windows management
vim.keymap.set("n", "<leader>sv", vim.cmd.vsp)
vim.keymap.set("n", "<leader>sh", vim.cmd.sp)

-- Resize windows size
vim.api.nvim_set_keymap("n", "<Right>", ":vertical resize +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Left>", ":vertical resize -5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", ":horizontal resize -5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Up>", ":horizontal resize +5<CR>", { noremap = true, silent = true })

-- Switch to a different window
vim.api.nvim_set_keymap("n", "<C-Left>", "<C-W>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Up>", "<C-W>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", "<C-W>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", "<C-W>l", { noremap = true, silent = true })

-- Font
vim.o.guifont = "Fira Code"
