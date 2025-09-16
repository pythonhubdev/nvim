return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	version = false, -- always use main
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		-- input providers (optional, pick one)
		"folke/snacks.nvim",
		-- selector providers (optional, pick one)
		"ibhagwan/fzf-lua",
		"echasnovski/mini.pick",
		"nvim-telescope/telescope.nvim",
		-- copilot for Avante
		"zbirenbaum/copilot.lua",
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
	opts = {
		provider = "copilot", -- use Copilot for all AI operations :contentReference[oaicite:0]{index=0}
		mode = "agentic", -- harness Copilot as an “agent” with tools :contentReference[oaicite:1]{index=1}
		auto_suggestions_provider = "copilot", -- auto‑suggest from Copilot :contentReference[oaicite:2]{index=2}

		-- provider‐specific settings
		providers = {
			copilot = {
				-- Avante will call into copilot.lua’s API under the hood
				-- No endpoint/model needed—copilot.lua handles everything
			},
		},

		-- turn off expensive or infrequently used features:
		dual_boost = { enabled = false },
		behaviour = {
			auto_set_keymaps = true,
			auto_set_highlight_group = true,
			auto_apply_diff_after_generation = false,
			minimize_diff = true,
			enable_token_counting = false,
			support_paste_from_clipboard = false,
			auto_approve_tool_permissions = false,
		},

		-- adjust how quickly suggestions fire for smooth performance
		suggestion = {
			debounce = 800,
			throttle = 800,
		},

		-- sidebar/popup layout (optional)
		windows = {
			position = "right",
			width = 30,
			wrap = true,
			sidebar_header = { enabled = true, align = "center", rounded = true },
			input = { prefix = "> ", height = 8 },
			edit = { border = "rounded", start_insert = true },
			ask = { floating = false, start_insert = true, border = "rounded" },
		},
	},
	build = "make", -- fetch/build Avante’s binary
}
