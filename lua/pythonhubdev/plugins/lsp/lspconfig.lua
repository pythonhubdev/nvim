return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/lazydev.nvim", opts = {} },
	},
	config = function()
		local lsp_config = require("lspconfig")

		local mason_lsp_config = require("mason-lspconfig")

		local cmp_vim_lsp = require("cmp_nvim_lsp")

		local keymaps = {
			{
				desc = "Show LSP references",
				mode = "n",
				keys = "gR",
				cmd = "<cmd>Telescope lsp_references<CR>",
			},
			{
				desc = "Go to declaration",
				mode = "n",
				keys = "gD",
				cmd = vim.lsp.buf.declaration,
			},
			{
				desc = "Show LSP definitions",
				mode = "n",
				keys = "gd",
				cmd = "<cmd>Telescope lsp_definitions<CR>",
			},
			{
				desc = "Show LSP implementations",
				mode = "n",
				keys = "gi",
				cmd = "<cmd>Telescope lsp_implementations<CR>",
			},
			{
				desc = "Show LSP type definitions",
				mode = "n",
				keys = "gt",
				cmd = "<cmd>Telescope lsp_type_definitions<CR>",
			},
			{
				desc = "See available code actions",
				mode = { "n", "v" },
				keys = "<C-.>",
				cmd = vim.lsp.buf.code_action,
			},
			{
				desc = "Smart rename",
				mode = "n",
				keys = "<leader>rn",
				cmd = vim.lsp.buf.rename,
			},
			{
				desc = "Show buffer diagnostics",
				mode = "n",
				keys = "<leader>D",
				cmd = "<cmd>Telescope diagnostics bufnr=0<CR>",
			},
			{
				desc = "Show line diagnostics",
				mode = "n",
				keys = "<leader>d",
				cmd = vim.diagnostic.open_float,
			},
			{
				desc = "Go to previous diagnostic",
				mode = "n",
				keys = "[d",
				cmd = vim.diagnostic.get_prev,
			},
			{
				desc = "Go to next diagnostic",
				mode = "n",
				keys = "]d",
				cmd = vim.diagnostic.get_next,
			},
			{
				desc = "Show documentation for what is under cursor",
				mode = "n",
				keys = "K",
				cmd = vim.lsp.buf.hover,
			},
			{
				desc = "Restart LSP",
				mode = "n",
				keys = "<leader>rs",
				cmd = ":LspRestart<CR>",
			},
		}

		-- Create autocommand to set buffer-local LSP keybindings
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }
				for _, map in ipairs(keymaps) do
					opts.desc = map.desc
					vim.keymap.set(map.mode, map.keys, map.cmd, opts)
				end
			end,
		})

		-- Used to enable auto-completion (assign to every lsp server config)
		local capabilities = cmp_vim_lsp.default_capabilities()

		local signs = {
			Error = "✘", -- Error sign
			Warn = "", -- Warning sign
			Hint = "💡", -- Hint sign
			Info = "ℹ️", -- Information sign
		}
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end
	end,
}
