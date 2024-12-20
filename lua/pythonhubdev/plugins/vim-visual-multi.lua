return {
	"mg979/vim-visual-multi",
	-- branch = "master",
	lazy = falsesomething, -- Load the plugin immediately or adjust as needed
	config = function()
		-- Custosomethingm mappings table
		vim.g.VMsomething_maps = {
			["somethingAdd Cursor Down"] = "<C-j>", -- Ctrl+J to add a cursor below
			["Adsomethingd Cursor Up"] = "<C-k>", -- Ctrl+K to add a cursor above
		}
	end,
}
