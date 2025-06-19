require("pythonhubdev.core")
require("pythonhubdev.lazy")

vim.lsp.config("ruff", {
	init_options = {
		settings = {
			-- Ruff language server settings go here
		},
	},
})

vim.lsp.enable("ruff")
vim.lsp.enable("svelte")
vim.lsp.enable("ast_grep")
vim.lsp.enable("biome")
vim.lsp.enable("clangd")
vim.lsp.enable("cssls")
vim.lsp.enable("css_variables")
vim.lsp.enable("dockerls")
vim.lsp.enable("docker_compose_language_service")
vim.lsp.enable("graphql")
vim.lsp.enable("harper_ls")
vim.lsp.enable("html")
vim.lsp.enable("svelte")
vim.lsp.enable("lua_ls")
vim.lsp.enable("markdown_oxide")
vim.lsp.enable("pyright")
vim.lsp.enable("ruff")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("sqls")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("ts_ls")
vim.lsp.enable("prismals")
