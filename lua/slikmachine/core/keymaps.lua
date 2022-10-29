vim.g.mapleader = " "

local keymap = vim.keymap

-- general

keymap.set("n", "<leader>h", ":nohl<CR>")
keymap.set("n", "x", "\"_dl")

-- saving
keymap.set({ "n" }, "<leader>w", ":w<CR>")

-- nvim-tree
keymap.set({ "n", "i" }, "<leader>e", ":NvimTreeToggle<CR>")
