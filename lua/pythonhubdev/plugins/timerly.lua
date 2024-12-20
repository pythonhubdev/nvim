return {
	"nvzone/timerly",
	dependencies = { "nvzone/volt" },
	cmd = "TimerlyToggle",
	config = function()
		vim.keymap.set("n", "<leader>ti", "<cmd>TimerlyToggle<CR>", { noremap = true, silent = true })
	end,
}
