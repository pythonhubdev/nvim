return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*",
            build = "make install_jsregexp",
        },
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
        "onsails/lspkind.nvim",
    },

    config = function()
        local cmp = require("cmp")

        local luasnip = require("luasnip")

        local lspkind = require("lspkind")

        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" }, -- Snippets
                { name = "buffer" }, -- Text within current buffer
                { name = "path" }, -- File system paths
            }),
            mapping = {
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(), -- Next suggestion
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(), -- Show completion suggestions
                ["<C-e>"] = cmp.mapping.abort(), -- Close completion window
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            },
            formatting = {
                format = lspkind.cmp_format({
                    mode = "symbol_text", -- Show symbol and text
                    maxwidth = 50, -- Prevent the popup from showing more than provided characters
                    ellipsis_char = "...", -- When popup menu exceeds maxwidth, the truncated part would show ellipsis_char instead
                    symbol_map = {
                        Text = "󰉿", -- Document text symbol
                        Method = "", -- Wrench and gear for methods
                        Function = "󰊕", -- Function icon
                        Constructor = "", -- Blueprint or builder icon
                        Field = "", -- Dot grid for fields
                        Variable = "", -- Box for variables
                        Class = "", -- Building icon for classes
                        Interface = "", -- Connected dots for interfaces
                        Module = "", -- Module box
                        Property = "", -- House or home icon for properties
                        Unit = "", -- Units or tools icon
                        Value = "", -- Value tag or badge icon
                        Enum = "", -- List icon for enums
                        Keyword = "", -- Key symbol for keywords
                        Snippet = "", -- Scissors for snippets
                        Color = "", -- Palette for color properties
                        File = "", -- Document icon for files
                        Reference = "", -- Link or chain for references
                        Folder = "", -- Folder icon
                        EnumMember = "", -- Circle list icon for enum members
                        Constant = "", -- Constants symbol or badge
                        Struct = "", -- 3D box or struct icon
                        Event = "", -- Lightning bolt for events
                        Operator = "", -- Cog for operators
                        TypeParameter = "", -- Tag for type parameters
                    }

                }),
            },
        })
    end,
}
