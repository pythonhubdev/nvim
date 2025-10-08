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
				"biome",
				"clangd",
				"cssls",
				"dockerls",
				"docker_language_server",
				"docker_compose_language_service",
				"golangci_lint_ls",
				"harper_ls",
				"jinja_lsp",
				"jsonls",
				"lua_ls",
				"markdown_oxide",
				"ruff",
				"rust_analyzer",
				"superhtml",
				"svelte",
				"sqls",
				"sqruff",
				"tailwindcss",
				"taplo",
				"ts_ls",
			},
			automatic_install = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"biome",
				"dotenv-linter",
				"editorconfig-checker",
				"golangci-lint",
				"jinja_lsp",
				"ruff",
				"stylua",
				"taplo",
				"yq",
				"zuban",
			},
		})

		mason_nvim_dap.setup({
			ensure_installed = { "dart", "js", "python", "stylua" },
			handlers = {},
			automatic_installation = true,
		})
	end,
}
