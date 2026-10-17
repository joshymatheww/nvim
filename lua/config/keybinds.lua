vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Splitting windows
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>",
	{ desc = "Split window vertically" })

vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>",
	{ desc = "Split window horizontally" })

-- Window navigation
vim.keymap.set("n", "<leader><Left>", "<C-w>h",
	{ desc = "Move to left window" })

vim.keymap.set("n", "<leader><Down>", "<C-w>j",
	{ desc = "Move to lower window" })

vim.keymap.set("n", "<leader><Up>", "<C-w>k",
	{ desc = "Move to upper window" })

vim.keymap.set("n", "<leader><Right>", "<C-w>l",
	{ desc = "Move to right window" })

-- Close and resize windows
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>",
	{ desc = "Close current window" })

vim.keymap.set("n", "<leader>se", "<C-w>=",
	{ desc = "Equalize window sizes" })

-- Resize windows with Alt + h/j/k/l
vim.keymap.set("n", "<M-h>", "<cmd>vertical resize -2<CR>",
	{ desc = "Decrease window width" })

vim.keymap.set("n", "<M-l>", "<cmd>vertical resize +2<CR>",
	{ desc = "Increase window width" })

vim.keymap.set("n", "<M-j>", "<cmd>resize +2<CR>",
	{ desc = "Increase window height" })

vim.keymap.set("n", "<M-k>", "<cmd>resize -2<CR>",
	{ desc = "Decrease window height" })

-- Indent selected lines with Tab
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selected lines" })

-- Unindent selected lines with Shift+Tab
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selected lines" })

-- Function return type and documentation
vim.keymap.set("n", "K", vim.lsp.buf.hover, {
	desc = "Show function documentation and return type",
})
