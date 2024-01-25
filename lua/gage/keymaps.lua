local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>e", ":Lex 30<cr>", opts)


-- Insert Mode --
-- JK to go exit Insert Mode
keymap("i", "jk", "<ESC>", opts)



-- Visual Mode --

keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)
