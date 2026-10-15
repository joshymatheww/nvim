vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Splitting windows
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>",
  { desc = "Split window vertically" })

vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>",
  { desc = "Split window horizontally" })

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h",
  { desc = "Move to left window" })

vim.keymap.set("n", "<C-j>", "<C-w>j",
  { desc = "Move to lower window" })

vim.keymap.set("n", "<C-k>", "<C-w>k",
  { desc = "Move to upper window" })

vim.keymap.set("n", "<C-l>", "<C-w>l",
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

