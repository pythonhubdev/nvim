return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	opts = {
		indent = {
			char = "|"
		}
	},
	scope = {
		enabled = true, 							-- Enable scope highlighting
		show_start = true, 							-- Show the start of the scope
		show_end = false, 							-- Do not show the end of the scope
		highlight = "IndentBlanklineContextChar", 	-- Highlight group for scope
  },
}
