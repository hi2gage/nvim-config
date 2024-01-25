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

-- Telescope
keymap("n", "<leader>ff", "<cmd> Telescope find_files <CR>", opts)
-- keymap("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>", opts)
-- keymap("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
-- keymap("n", "<leader>gt", "<cmd> Telescope git_status <CR>")

-- bufferline, cycle buffers
keymap("n", "<Tab>", "<cmd> BufferLineCycleNext <CR>")
keymap("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>")
keymap("n", "<C-q>", "<cmd> bd <CR>")
