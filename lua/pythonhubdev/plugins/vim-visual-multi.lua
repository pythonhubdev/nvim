return {
	"mg979/vim-visual-multi",
	branch = "master",
	lazy = false, -- Load the plugin immediately or adjust as needed
	init = function()
		vim.g.VM_default_mappings = 0
		vim.g.VM_maps = {
			["Add Cursor Down"] = "<M-C-Down>",
			["Add Cursor Up"] = "<M-C-Up>",
		}
		vim.g.VM_add_cursor_at_pos_no_mappings = 1
	end,
}
