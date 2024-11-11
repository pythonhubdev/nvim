return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")

        local mason_lsp = require("mason-lspconfig")

        mason.setup({

            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                }
            }

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
    end,
}
