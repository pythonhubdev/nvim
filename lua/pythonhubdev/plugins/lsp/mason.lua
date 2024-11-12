return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")

		local mason_lsp = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

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
				"lua_ls",
				"markdown_oxide",
				"pylyzer",
				"ruff",
				"rust_analyzer",
				"sqls",
				"tailwindcss",
				"ts_ls",
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
				"pylyzer",
			},
		})
	end,
}