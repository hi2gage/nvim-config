local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<C-s>", "<cmd> w <CR>", opts)

-- Insert Mode --
-- JK to go exit Insert Mode
keymap("i", "jk", "<ESC>", opts)

-- Visual Mode --

keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- Telescope
-- keymap("n", "<leader>ff", "<cmd> Telescope find_files <CR>", opts)
-- keymap("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>", opts)
-- keymap("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
-- keymap("n", "<leader>gt", "<cmd> Telescope git_status <CR>")

-- bufferline, cycle buffers
keymap("n", "<Tab>", "<cmd> BufferLineCycleNext <CR>")
keymap("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>")
keymap("n", "<C-q>", "<cmd> bd <CR>")

-- comment.nvim
keymap("n", "<leader>/", function()
	require("Comment.api").toggle.linewise.current()
end, { desc = "Comment Line" })

keymap(
	"v",
	"<leader>/",
	"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
	{ desc = "Comment Line" }
)

-- Add conform.nvim mapping to format entire directory
vim.cmd([[command! FormatDirectory lua ConformFormatDirectory()]])

function ConformFormatDirectory()
	local current_directory = vim.fn.expand("%:p:h")
	local lua_files = vim.fn.glob(current_directory .. "/*.lua", true, true)

	for _, file in ipairs(lua_files) do
		vim.cmd("silent edit " .. file)
		vim.cmd("silent saveas " .. file)
		vim.cmd("silent bdelete!")
	end

	print("All Lua files in the current directory have been opened and saved.")
end
