return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap-python",
		"mxsdev/nvim-dap-vscode-js",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		dapui.setup()

		vim.fn.sign_define("DapBreakpoint", {
			text = "",
			texthl = "DapBreakpoint",
			linehl = "",
			numhl = "",
		})
		vim.fn.sign_define("DapBreakpointCondition", {
			text = "",
			texthl = "DapBreakpointCondition",
			linehl = "",
			numhl = "",
		})
		vim.fn.sign_define("DapBreakpointRejected", {
			text = "",
			texthl = "DapBreakpointRejected",
			linehl = "",
			numhl = "",
		})
		vim.fn.sign_define("DapStopped", {
			text = "",
			texthl = "DapStopped",
			linehl = "DapStoppedLine",
			numhl = "",
		})

		-- Python Configuration
		require("dap-python").test_runner = "pytest"
		require("dap-python").setup()

		-- JavaScript / TypeScript configuration
		require("dap-vscode-js").setup({
			debugger_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter",
			adapters = { "pwa-node", "pwa-chrome", "pwa-msedge" },
		})

		for _, language in ipairs({ "typescript", "javascript" }) do
			require("dap").configurations[language] = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					cwd = "${workspaceFolder}",
				},
				{
					type = "pwa-node",
					request = "attach",
					name = "Attach",
					processId = require("dap.utils").pick_process,
					cwd = "${workspaceFolder}",
				},
				{
					type = "pwa-chrome",
					request = "launch",
					name = "Launch Chrome",
					url = "http://localhost:3000",
					webRoot = "${workspaceFolder}",
				},
			}
		end

		-- Key mappings for nvim-dap in table format
		local dap_keymaps = {
			n = {
				-- Debugging keymaps
				["<F5>"] = { "<cmd>lua require'dap'.continue()<CR>", "Start/Continue Debugging" },
				["<F10>"] = { "<cmd>lua require'dap'.step_over()<CR>", "Step Over" },
				["<F11>"] = { "<cmd>lua require'dap'.step_into()<CR>", "Step Into" },
				["<F12>"] = { "<cmd>lua require'dap'.step_out()<CR>", "Step Out" },
				["<leader>db"] = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "Toggle Breakpoint" },
				["<leader>dB"] = {
					"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
					"Set Conditional Breakpoint",
				},
				["<leader>dlp"] = {
					"<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",
					"Set Log Point",
				},
				["<leader>dr"] = { "<cmd>lua require'dap'.repl.open()<CR>", "Open REPL" },
				["<leader>dl"] = { "<cmd>lua require'dap'.run_last()<CR>", "Run Last Debug Session" },
				["<leader>dui"] = { "<cmd>lua require'dapui'.toggle()<CR>", "Toggle DAP UI" },
			},
		}

		-- Apply key mappings
		for mode, mappings in pairs(dap_keymaps) do
			for keys, map in pairs(mappings) do
				vim.api.nvim_set_keymap(mode, keys, map[1], { noremap = true, silent = true, desc = map[2] })
			end
		end
	end,
}
