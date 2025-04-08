return {
	"nvim-flutter/flutter-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim",
	},
	config = function()
		local flutter_tools = require("flutter-tools")

		flutter_tools.setup({
			ui = {
				border = "rounded",
				notfication_style = "plugin",
			},
			decorations = {
				statusline = {
					app_version = false,
					device = false,
					project_config = false,
				},
			},
			debugger = {
				enabled = true,
				run_via_dap = true,
				exception_breakpoints = {},
				register_configurations = function(paths)
					require("dap").configurations.dart = {
						{
							type = "dart",
							request = "launch",
							name = "Launch Flutter App",
							program = "${workspaceFolder}/lib/main.dart",
							cwd = "${workspaceFolder}",
						},
					}
				end,
			},
		})
	end,
}
