return {
	"windwp/nvim-ts-autotag",
	depends = "nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-ts-autotag").setup({
			autotag = {
				enable = true, -- Automatically close and rename HTML tags
				filetypes = {
					"html",
					"xml",
					"javascript",
					"typescript",
					"typescriptreact",
					"javascriptreact",
					"svelte",
					"vue",
					"jsx",
					"tsx",
					"python",
					"rust",
					"lua",
					"css",
					"markdown",
				},
			},
		})
	end,
	lazy = true,
	event = "VeryLazy",
}
