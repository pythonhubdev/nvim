return {
	"wintermute-cell/gitignore.nvim",
	requires = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		gitignore = require("gitignore")

		vim.keymap.set("n", "<leader>gi", gitignore.generate)
	end,
}
