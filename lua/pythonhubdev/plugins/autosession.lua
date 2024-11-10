return {
	"rmagatti/auto-session",
	config = function()

		-- Configuration
		require("auto-session").setup({
			auto_restore_enabled = false,
			auto_session_supress_dirs = { "~/", "~/Downloads", "/" },
			session_lens = {
				load_on_setup = true, 	-- Initialize on startup (requires Telescope)
				theme_conf = {	
					border = true,
				},
				previewer = false, 		-- File preview for session picker
			}
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root directory" })
		vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for current working directory" })
		vim.keymap.set("n", "<leader>sl", "<cmd>SessionSearch<CR>", { desc = "Search throughout the list of available sessions" })
	end,
}

