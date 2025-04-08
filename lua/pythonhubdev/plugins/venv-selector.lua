return {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
	opts = {
		auto_refresh = true,
	},
	event = "VeryLazy",
	keys = {
		{ "<leader>ves", "<cmd>VenvSelect<cr>" },
		{ "<leader>vec", "<cmd>VenvSelectCached<cr>" },
	},
}
