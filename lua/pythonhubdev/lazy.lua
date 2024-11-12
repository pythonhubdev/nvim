local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ import = "pythonhubdev.plugins" },
		{ import = "pythonhubdev.plugins.lsp" },
	},
	defaults = {
		lazy = false,
	},
	install = {
		missing = true, -- Install missing plugins on startup
		colorscheme = { "habamax" }, -- Fallback colorscheme during installation
	},
	change_detection = {
		notify = false,
	},
	ui = {
		size = { width = 0.8, height = 0.8 }, -- UI window size
		wrap = true, -- Wrap lines in the UI
		border = "rounded", -- Rounded border for the UI window
		backdrop = 60, -- Backdrop opacity
		title = "Plugin Manager", -- Title of the UI window
		title_pos = "center", -- Title position
		pills = true, -- Show pills on top of the Lazy window
		icons = {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
			list = {
				"●",
				"➜",
				"★",
				"‒",
			},
		},
	},
	performance = {
		cache = {
			enabled = true,
		},
		reset_packpath = true,
		rtp = {
			reset = true,
		},
	},
})
