vim.g.mapleader = " "

-- Define keymaps in a Table

local keymaps = {

	i = {
		["jk"] = { "<ESC>", "Escape insert mode" },
	},

	n = {
		-- Search
		["<leader>nh"] = { ":nohl<CR>", "Clear search highlights" },
		-- Math
		["<leader>+"] = { "<C-a>", "Increment a number" },
		["<leader>-"] = { "<C-x>", "Decrement a number" },
		-- Windows Split
		["<leader>sv"] = { "<C-w>v", "Split windows vertically" },
		["<leader>sh"] = { "<C-w>s", "Split windows horizontally" },
		["<leader>se"] = { "<C-w>=", "Make existing split windows to equal size" },
		["<leader>sx"] = { "<cmd>close<CR>", "Close current split window" },

		-- Tab
		["<leader>to"] = { "<cmd>tabnew<CR>", "Open a new tab" },
		["<leader>tx"] = { "<cmd>tabclose<CR>", "Close current tab" },
		["<leader>tn"] = { "<cmd>tabn<CR>", "Navigate to the next tab" },
		["<leader>tp"] = { "<cmd>tabp<CR>", "Navigate to the previous tab" },
		["<leader>tf"] = { "<cmd>tabnew %<CR>", "Open current buffer / current file in new tab" },

		-- Explorer
		["<leader>e"] = { "<cmd>Oil<CR>", "Open the oil file explorer" },
	},
}

for mode, mappings in pairs(keymaps) do
	for keys, map in pairs(mappings) do
		vim.keymap.set(mode, keys, map[1], { noremap = true, silent = true, desc = map[2] })
	end
end
