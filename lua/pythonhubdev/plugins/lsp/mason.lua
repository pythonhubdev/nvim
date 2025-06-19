return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"jay-babu/mason-nvim-dap.nvim",
	},
	config = function()
		local mason = require("mason")

		local mason_lsp = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		local mason_nvim_dap = require("mason-nvim-dap")

		mason.setup({

			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lsp.setup({

			ensure_installed = {
				"ast_grep",
				"biome",
				"clangd",
				"cssls",
				"css_variables",
				"dockerls",
				"docker_compose_language_service",
				"graphql",
				"harper_ls",
				"html",
				"svelte",
				"lua_ls",
				"markdown_oxide",
				"pyright",
				"ruff",
				"rust_analyzer",
				"sqls",
				"tailwindcss",
				"ts_ls",
				"prismals",
			},
			automatic_install = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"biome",
				"stylua",
				"ruff",
				"taplo",
				"yq",
				"editorconfig-checker",
			},
		})

		mason_nvim_dap.setup({})
	end,
}
