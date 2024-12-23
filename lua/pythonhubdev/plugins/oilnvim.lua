return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.icons" },
	-- Configuration
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = {
				"icon",
			},
			delete_on_trash = true,
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
				natural_order = true,
			},
			win_options = {
				signcolumn = "yes:1",
				statuscolumn = "",
			},
			keymaps = {
				["<leader>ev"] = { "actions.select", opts = { vertical = true }, desc = "Open in vertical split" },
				["<leader>eh"] = { "actions.select", opts = { horizontal = true }, desc = "Open in horizontal split" },
				["<leader>et"] = { "actions.select", opts = { tab = true }, desc = "Open in new tab" },
				["<leader>ep"] = "actions.preview", -- Preview file/directory
				["<leader>eq"] = "actions.close", -- Quit/close the Oil buffer
				["<leader>er"] = "actions.refresh", -- Refresh Oil view
			},
		})
	end,
}
