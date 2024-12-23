return {
	"FerretDetective/oil-git-signs.nvim",
	ft = "oil",
	opts = {},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	setup = function()
		local ogs = require("oil-git-signs")

		local modern_icons = {
			MODIFIED = "", -- Pencil
			UNMODIFIED = "", -- Check
			TYPE_CHANGED = "", -- Arrow Right
			ADDED = "", -- Plus
			DELETED = "", -- Trash
			RENAMED = "", -- Rename
			COPIED = "", -- Copy
			UNMERGED = "", -- Git Conflict
			UNTRACKED = "", -- Question
			IGNORED = "", -- Cross
			SUB_MOD_MODIFIED = "", -- Small Diamond
		}

		local defaults = {
			show_index = function()
				return true
			end,
			show_working_tree = function()
				return true
			end,
			show_ignored = function()
				return true
			end,
			index = {
				[ogs.GitStatus.SUB_MOD_MODIFIED] = {
					icon = modern_icons.SUB_MOD_MODIFIED,
					hl_group = "OilGitSignsIndexSubModModified",
				},
				[ogs.GitStatus.MODIFIED] = { icon = modern_icons.MODIFIED, hl_group = "OilGitSignsIndexModified" },
				[ogs.GitStatus.UNMODIFIED] = { icon = modern_icons.UNMODIFIED, hl_group = "OilGitSignsIndexUnmodified" },
				[ogs.GitStatus.TYPE_CHANGED] = {
					icon = modern_icons.TYPE_CHANGED,
					hl_group = "OilGitSignsIndexTypeChanged",
				},
				[ogs.GitStatus.ADDED] = { icon = modern_icons.ADDED, hl_group = "OilGitSignsIndexAdded" },
				[ogs.GitStatus.DELETED] = { icon = modern_icons.DELETED, hl_group = "OilGitSignsIndexDeleted" },
				[ogs.GitStatus.RENAMED] = { icon = modern_icons.RENAMED, hl_group = "OilGitSignsIndexRenamed" },
				[ogs.GitStatus.COPIED] = { icon = modern_icons.COPIED, hl_group = "OilGitSignsIndexCopied" },
				[ogs.GitStatus.UNMERGED] = { icon = modern_icons.UNMERGED, hl_group = "OilGitSignsIndexUnmerged" },
				[ogs.GitStatus.UNTRACKED] = { icon = modern_icons.UNTRACKED, hl_group = "OilGitSignsIndexUntracked" },
				[ogs.GitStatus.IGNORED] = { icon = modern_icons.IGNORED, hl_group = "OilGitSignsIndexIgnored" },
			},
			working_tree = {
				[ogs.GitStatus.SUB_MOD_MODIFIED] = {
					icon = modern_icons.SUB_MOD_MODIFIED,
					hl_group = "OilGitSignsWorkingTreeSubModModified",
				},
				[ogs.GitStatus.MODIFIED] = { icon = modern_icons.MODIFIED, hl_group = "OilGitSignsWorkingTreeModified" },
				[ogs.GitStatus.UNMODIFIED] = {
					icon = modern_icons.UNMODIFIED,
					hl_group = "OilGitSignsWorkingTreeUnmodified",
				},
				[ogs.GitStatus.TYPE_CHANGED] = {
					icon = modern_icons.TYPE_CHANGED,
					hl_group = "OilGitSignsWorkingTreeTypeChanged",
				},
				[ogs.GitStatus.ADDED] = { icon = modern_icons.ADDED, hl_group = "OilGitSignsWorkingTreeAdded" },
				[ogs.GitStatus.DELETED] = { icon = modern_icons.DELETED, hl_group = "OilGitSignsWorkingTreeDeleted" },
				[ogs.GitStatus.RENAMED] = { icon = modern_icons.RENAMED, hl_group = "OilGitSignsWorkingTreeRenamed" },
				[ogs.GitStatus.COPIED] = { icon = modern_icons.COPIED, hl_group = "OilGitSignsWorkingTreeCopied" },
				[ogs.GitStatus.UNMERGED] = { icon = modern_icons.UNMERGED, hl_group = "OilGitSignsWorkingTreeUnmerged" },
				[ogs.GitStatus.UNTRACKED] = {
					icon = modern_icons.UNTRACKED,
					hl_group = "OilGitSignsWorkingTreeUntracked",
				},
				[ogs.GitStatus.IGNORED] = { icon = modern_icons.IGNORED, hl_group = "OilGitSignsWorkingTreeIgnored" },
			},
			status_priority = {
				[ogs.GitStatus.UNMERGED] = 10,
				[ogs.GitStatus.MODIFIED] = 9,
				[ogs.GitStatus.SUB_MOD_MODIFIED] = 8,
				[ogs.GitStatus.ADDED] = 7,
				[ogs.GitStatus.DELETED] = 6,
				[ogs.GitStatus.RENAMED] = 5,
				[ogs.GitStatus.COPIED] = 4,
				[ogs.GitStatus.TYPE_CHANGED] = 3,
				[ogs.GitStatus.UNTRACKED] = 2,
				[ogs.GitStatus.IGNORED] = 1,
				[ogs.GitStatus.UNMODIFIED] = 0,
			},
			status_classification = {
				[ogs.GitStatus.SUB_MOD_MODIFIED] = "modified",
				[ogs.GitStatus.UNMERGED] = "modified",
				[ogs.GitStatus.MODIFIED] = "modified",
				[ogs.GitStatus.ADDED] = "added",
				[ogs.GitStatus.DELETED] = "removed",
				[ogs.GitStatus.RENAMED] = "modified",
				[ogs.GitStatus.COPIED] = "added",
				[ogs.GitStatus.TYPE_CHANGED] = "modified",
				[ogs.GitStatus.UNTRACKED] = "added",
				[ogs.GitStatus.UNMODIFIED] = nil,
				[ogs.GitStatus.IGNORED] = nil,
			},
			keymaps = {
				{ "n", "gs", ":OilGitSigns<CR>", "Show Git Status" },
			},
		}

		ogs.setup(defaults)
	end,
}
