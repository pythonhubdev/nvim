return {
	"EdenEast/nightfox.nvim",

	-- Configuration
	priority = 1000,
	config = function()
		require("nightfox").setup({
			options = {
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = "italic",
					keywords = "bold",
					functions = "italic,bold",
				},
			},
		})

		vim.cmd("colorscheme carbonfox")
	end,
}
