return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("notify").setup({
			fps = 120,
			timeout = 5000,
			background_colour = "#000000",
			merge_duplicates = true,
		})
	end,
}
