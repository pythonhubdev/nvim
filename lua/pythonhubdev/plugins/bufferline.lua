return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },   
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				themable = true,
				numbers = "ordinal",
				separator_style = "slant",
				indicator = {
    				icon = "▎", 				-- Indicator icon
      				style = "icon", 			-- Indicator style
    			},
				buffer_close_icon = "✖",       	-- Modern close icon
				modified_icon = "",           	-- Subtle indicator for modified files
				close_icon = "✖",              	-- Simple close icon for bufferline
				left_trunc_marker = "",       	-- Curved left truncation marker
				right_trunc_marker = "",      	-- Curved right truncation marker
				color_icons = true,
				show_buffer_icons = true, 		-- Show buffer icons
				show_buffer_close_icons = true, -- Show buffer close icons
				show_close_icon = true, 		-- Show close icon
				show_tab_indicators = true, 	-- Show tab indicators
				show_duplicate_prefix = true, 	-- Show duplicate prefix
				persist_buffer_sort = true, 	-- Persist buffer sort
				enforce_regular_tabs = false,
				always_show_bufferline = true, 	-- Always show bufferline
				diagnostic = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local s = " "
					for e, n in pairs(diagnostics_dict) do
						local sym = e == "error" and " " 		-- Error icon
						  or (e == "warning" and " " or " ") 	-- Warning and info icons
						s = s .. n .. sym
					end
					return s
   				end,
			}
		})
	end,
}
