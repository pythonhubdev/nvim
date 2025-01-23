return {
	"antosha417/nvim-lsp-file-operations",
	requires = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("lsp-file-operations").setup()
	end,
}
