return {
	"github/copilot.vim",
	config = function()
		-- Configure Copilot settings
		vim.g.copilot_assume_mapped = true

		-- Configure Copilot to work with more filetypes
		vim.g.copilot_filetypes = {
			["*"] = true,
			["TelescopePrompt"] = false,
			["NvimTree"] = false,
		}
	end,
}
