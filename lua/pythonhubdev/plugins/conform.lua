return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                javascript = { "biome", },
                javascriptreact = { "biome", },
                typescript = { "biome", },
                typescriptreact = { "biome", },
                css = { "biome", },
                html = { "biome", },
                json = { "biome", },
                python = { "ruff", },
                toml = { "taplo" },
                lua = { "stylua" },
                yaml = { "yq" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            }
        })
    end
}
