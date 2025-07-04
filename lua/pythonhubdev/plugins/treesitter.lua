return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"python", -- Python
				"dart", -- Flutter / Dart
				"rust", -- Rust
				"sql", -- SQL (general SQL syntax)
				"html", -- HTML
				"css", -- CSS
				"typescript", -- TypeScript
				"tsx", -- TSX
				"javascript", -- JavaScript
				"lua", -- Lua
				"toml", -- TOML
				"yaml", -- YAML
			},
			auto_install = true,
			sync_install = false,
			ignore_install = {},
			modules = {},
			highlight = {
				enable = true, -- Enable Treesitter-based syntax highlighting
				additional_vim_regex_highlighting = false, -- Disable Vim's regex-based highlighting for performance
			},
			incremental_selection = {
				enable = true, -- Enables incremental selection based on the syntax tree
				keymaps = {
					init_selection = "<C-space>", -- Start incremental selection
					node_incremental = "<C-space>", -- Increment to the next node
					scope_incremental = "grc", -- Increment to the next scope
					node_decremental = "<bs>", -- Decrement to the previous node
				},
			},
			indent = {
				enable = true, -- Enable Treesitter based indentation
			},
		})
	end,
}
