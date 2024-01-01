-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Blank Lines
-- Map <Enter> to open a new line below and enter insert mode
vim.keymap.set("n", "<CR>", "o<ESC>", { noremap = true, silent = true })

-- Map <S-Enter> to open a new line above and enter insert mode
vim.keymap.set("n", "<S-CR>", "O<ESC>", { noremap = true, silent = true })
