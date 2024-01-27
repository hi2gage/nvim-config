ocal plugins = {
	{ lazy = true, "nvim-lua/plenary.nvim" },
	-- { import = "gage.plugins.configs" },

	-- file tree
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		config = function()
			require("nvim-tree").setup()
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
