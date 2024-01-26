return 	{
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = function()
        require("nightfox").setup({
            groups = {
                all = { VertSplit = { fg = "bg3" } },
            },
        })
    end,
}