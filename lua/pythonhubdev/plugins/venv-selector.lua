return {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
	ft = "python",
	opts = {
		options = {
			picker = "telescope",
			enable_default_search = false,
		},
		{
			search = {
				virtualenvs = {
					command = "fd .venv $WORKSPACE_PATH --type d --max-depth 1 -u --full-path --color never -E /proc",
				},
			},
		},
	},
	event = "VeryLazy",
	keys = {
		{ "<leader>ves", "<cmd>VenvSelect<cr>" },
		{ "<leader>vec", "<cmd>VenvSelectCached<cr>" },
	},
}
