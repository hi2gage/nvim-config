local plugins = {
	{ lazy = true, "nvim-lua/plenary.nvim" },
	-- { import = "gage.plugins.configs" },

	{
		"EdenEast/nightfox.nvim",
		priority = 1000,
		config = function()
			require("nightfox").setup({
				groups = {
					all = { VertSplit = { fg = "bg3" } },
				},
			})
		end,
	},

	-- file tree
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		config = function()
			require("nvim-tree").setup()
		end,
	},

	-- files finder etc
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		keys = {
			{
				"<leader>,",
				"<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
				desc = "Switch Buffer",
			},
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
		},
		config = function()
			require("gage.plugins.configs.telescope")
		end,
	},

	-- Which Key to press
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		config = function()
			require("gage.plugins.configs.which-key")
		end,
	},

  -- Formatter
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("gage.plugins.configs.conform")
		end,
	},

  -- Lazy Git
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
},
}

require("lazy").setup(plugins, require("gage.plugins.configs.lazy"))
