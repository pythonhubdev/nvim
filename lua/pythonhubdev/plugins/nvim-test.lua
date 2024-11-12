return {
	"vim-test/vim-test",
	config = function()
		vim.g["test#strategy"] = "neovim" -- Use Neovim terminal strategy for async tests
		vim.g["test#python#runner"] = "pytest" -- Use pytest for Python
		vim.g["test#javascript#runner"] = "jest" -- Use Jest for JavaScript/React
		vim.g["test#dart#runner"] = "flutter" -- Use Flutter test for Dart projects

		-- Key mappings for vim-test
		local test_keymaps = {
			["<leader>tn"] = { ":TestNearest<CR>", "Run the nearest test" },
			["<leader>tf"] = { ":TestFile<CR>", "Run all tests in the current file" },
			["<leader>ts"] = { ":TestSuite<CR>", "Run the entire test suite" },
			["<leader>tl"] = { ":TestLast<CR>", "Re-run the last test" },
			["<leader>tv"] = { ":TestVisit<CR>", "Visit the last test file" },
		}

		-- Apply key mappings
		for keys, map in pairs(test_keymaps) do
			vim.api.nvim_set_keymap("n", keys, map[1], { noremap = true, silent = true, desc = map[2] })
		end
	end,
}
