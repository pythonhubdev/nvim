return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			stages = "fade_in_slide_out",
			timeout = 2000,
			background_colour = "#000000",
			minimum_width = 50,
			max_width = 100,
			max_height = 20,
		})
	end,
}
