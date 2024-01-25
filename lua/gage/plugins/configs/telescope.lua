-- return {
--     "nvim-telescope/telescope.nvim",
--     cmd = "Telescope",
--     keys = {
--       {
--         "<leader>,",
--         "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
--         desc = "Switch Buffer",
--       },
--       { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
--       { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
--     },
--     config = {
--       -- require "gage.plugins.configs.telescope"
--       defaults = {
--         sorting_strategy = "ascending",
--         layout_config = {
--           horizontal = { prompt_position = "top" },
--         },
--        keys = {
--           {
--             "<leader>,",
--             "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
--             desc = "Switch Buffer",
--           },
--           -- { "<leader>ff", Util.telescope("files"), desc = "Find Files (root dir)" },
--           { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
--         }
--       },
--     }
-- }

require("telescope").setup({
	defaults = {
		sorting_strategy = "ascending",
		layout_config = {
			horizontal = { prompt_position = "top" },
		},
		keys = {
			{
				"<leader>,",
				"<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
				desc = "Switch Buffer",
			},
			-- { "<leader>ff", Util.telescope("files"), desc = "Find Files (root dir)" },
			{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
		},
	},
})

