-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Colemak Keybindings
local map = vim.keymap.set

local opts = { noremap = true, silent = true }

map("n", "n", "j", opts)
map("x", "n", "j", opts)
map("o", "n", "j", opts)
map("n", "e", "k", opts)
map("x", "e", "k", opts)
map("o", "e", "k", opts)
map("n", "i", "l", opts)
map("x", "i", "l", opts)
map("o", "i", "l", opts)

-- Colemak Insert
map("n", "u", "i", opts)
map("n", "U", "I", opts)
map("x", "u", "i", opts)
map("x", "U", "I", opts)
map("o", "u", "i", opts)
map("o", "U", "I", opts)

-- Undo/redo
map("n", "l", "u", opts)
map("x", "l", ":<C-U>undo<CR>", opts)
map("n", "gl", "u", opts)
map("x", "gl", ":<C-U>undo<CR>", opts)

-- Colemak Windows
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-i>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-n>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-e>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- {{{ Improvments
map("n", ">>", "V>", opts)
map("n", "<<", "V<", opts)

map("n", "<leader>k", vim.diagnostic.open_float, { noremap = true })
-- map("n", "<leader>/", "gcc", { desc = "Comment Line", noremap = true })
-- map("v", "<leader>/", "gc", { desc = "Comment Line", noremap = true })

-- buffers
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

map("n", "<leader>v", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
