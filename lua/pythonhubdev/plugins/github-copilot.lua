return {
	"github/copilot.vim",
	config = function()
		-- Configure Copilot settings
		vim.g.copilot_assume_mapped = true
		vim.g.copilot_no_tab_map = true

		-- Configure Copilot to work with more filetypes
		vim.g.copilot_filetypes = {
			["*"] = true,
			["TelescopePrompt"] = false,
			["NvimTree"] = false,
		}
	end,
}
