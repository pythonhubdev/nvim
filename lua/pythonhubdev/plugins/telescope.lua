return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- Load and configure Telescope
		require("telescope").setup({
			defaults = {
				prompt_prefix = " ", -- Modern prompt icon
				selection_caret = " ", -- Modern selection icon
				path_display = { "smart" }, -- Smart path display
				layout_config = {
					horizontal = {
						prompt_position = "top", -- Position prompt at the top
						preview_width = 0.55, -- Set preview width
					},
					vertical = {
						mirror = false, -- No mirroring for vertical layout
					},
					width = 0.87, -- Overall width
					height = 0.80, -- Overall height
					preview_cutoff = 120, -- Preview cutoff for small screens
				},
				sorting_strategy = "ascending", -- Sort results in ascending order
				color_devicons = true, -- Enable color icons
				file_ignore_patterns = { "node_modules" }, -- Ignore specific directories
			},
			extensions = {
				fzf = {
					fuzzy = true, -- Enable fuzzy matching
					override_generic_sorter = true, -- Override generic sorter
					override_file_sorter = true, -- Override file sorter
					case_mode = "smart_case", -- Smart case matching
				},
			},
		})

		-- Load the FZF extension
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("noice")
		local keymaps = {

			-- Normal Mode
			n = {
				["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "Find Files in current working directory" },
				["<leader>fr"] = { "<cmd>Telescope oldfiles<CR>", "Find Recent Files" },
				["<leader>fs"] = { "<cmd>Telescope grep_string<CR>", "Find string in current open file" },
				["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "Find string in current working directory" },
				["<leader>fb"] = { "<cmd>Telescope buffers<CR>", "Open Buffers" },
				["<leader>fh"] = { "<cmd>Telescope help_tags<CR>", "Help Tags" },
			},
		}

		-- Apply Keymaps
		for mode, mappings in pairs(keymaps) do
			for keys, map in pairs(mappings) do
				vim.api.nvim_set_keymap(mode, keys, map[1], { noremap = true, silent = true, desc = map[2] })
			end
		end
	end,
}
