-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- edit current text
keymap("n", "<C-c>", "ciw")

-- moving to line
keymap({ "n", "v" }, "gh", "0", { desc = "Line begin" })
keymap({ "n", "v" }, "gl", "$", { desc = "Line end" })

-- moving to next relation
keymap({ "n", "v" }, "<tab>", "%")

-- Duplicate a line and comment out the first line
keymap("n", "yc", "yygccp", { remap = true, desc = "Duplicate a line and comment out the first line" })

keymap("n", "<C-j>", ":Treewalker Down<CR>", { noremap = true, silent = true })
keymap("n", "<C-k>", ":Treewalker Up<CR>", { noremap = true, silent = true })
keymap("n", "<C-h>", ":Treewalker Left<CR>", { noremap = true, silent = true })
keymap("n", "<C-l>", ":Treewalker Right<CR>", { noremap = true, silent = true })
