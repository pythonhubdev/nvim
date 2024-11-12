vim.cmd("let g:netrw_liststyle = 3")

local options = {
	-- UI
	background = "dark", -- Set the background color to be dark
	termguicolors = true, -- Enable 24-bit GUI colors
	showtabline = 2, -- Always show tabline

	-- Number options
	relativenumber = true, -- Show relative line number to navigate easily between lines
	number = true, -- Show numbers
	signcolumn = "yes", -- Show sign column by default

	-- Indentation and Tabs
	expandtab = false, -- Use tabs and avoid spaces
	tabstop = 4, -- Number of spaces a tab counts for
	shiftwidth = 4, -- Number of spaces for indentation
	smartindent = true, -- Auto indents new line
	wrap = false, -- Disable line wrapping
	-- Clipboard
	clipboard = "unnamedplus", -- Use the system clipboard,

	-- Cursor
	cursorline = true, -- Highlight the current active line
	-- Scroll
	scrolloff = 12, -- Minimum lines above below the cursor
	sidescrolloff = 12, -- Minimum lines to the left and right of cursor
	smoothscroll = true, -- Ensure smooth scrolling

	-- Search
	ignorecase = true, -- Ignore case during search
	smartcase = true, -- Enable smart case search
	hlsearch = true, -- Highlight all search results
	incsearch = true, -- Enable incremental search

	-- Split Windows
	splitbelow = true, -- Split windows horizontally
	splitright = true, -- Split windows vertically

	-- Completion options
	completeopt = { "menuone", "noinsert", "noselect", "preview" }, -- Show completions even for one match along with additional information
	pumheight = 10, -- Max number of items in the completion popup menu

	-- File encoding
	encoding = "utf-8", -- Default encoding
	fileencoding = "utf-8", -- Encoding for files

	-- Mouse
	mouse = "a",

	-- Fsync and Auto-saving
	fsync = true, -- Ensure data is safely written to disk

	-- Backspace
	backspace = "indent,eol,start",
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

-- Additional Configurations for Auto-Save
-- Auto-save every few seconds during edit
vim.api.nvim_exec(
	[[
  augroup autosave
    autocmd!
    autocmd CursorHold,InsertLeave * silent! wall
  augroup END
]],
	false
)

vim.opt.updatetime = 60000 -- 1 minute delay before triggering CursorHold event
