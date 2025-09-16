return {
	"stevanmilic/nvim-lspimport",
	config = function()
		vim.keymap.set("n", "<leader>ai", require("lspimport").import, { noremap = true, desc = "LSP Import" })
	end,
}
