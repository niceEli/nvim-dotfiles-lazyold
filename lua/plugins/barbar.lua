return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		lazy = false,
		init = function()
			vim.g.barbar_auto_setup = true
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		keys = {
			-- Move to previous/next
			{
				"<A-,>",
				function()
					vim.cmd.BufferPrevious()
				end,
				desc = "Previous buffer",
			},
			{
				"<A-.>",
				function()
					vim.cmd.BufferNext()
				end,
				desc = "Next buffer",
			},

			-- Re-order to previous/next
			{
				"<A-<>",
				function()
					vim.cmd.BufferMovePrevious()
				end,
				desc = "Move buffer previous",
			},
			{
				"<A->>",
				function()
					vim.cmd.BufferMoveNext()
				end,
				desc = "Move buffer next",
			},

			-- Goto buffer in position...
			{
				"<A-1>",
				function()
					vim.cmd("BufferGoto 1")
				end,
				desc = "Goto buffer 1",
			},
			{
				"<A-2>",
				function()
					vim.cmd("BufferGoto 2")
				end,
				desc = "Goto buffer 2",
			},
			{
				"<A-3>",
				function()
					vim.cmd("BufferGoto 3")
				end,
				desc = "Goto buffer 3",
			},
			{
				"<A-4>",
				function()
					vim.cmd("BufferGoto 4")
				end,
				desc = "Goto buffer 4",
			},
			{
				"<A-5>",
				function()
					vim.cmd("BufferGoto 5")
				end,
				desc = "Goto buffer 5",
			},
			{
				"<A-6>",
				function()
					vim.cmd("BufferGoto 6")
				end,
				desc = "Goto buffer 6",
			},
			{
				"<A-7>",
				function()
					vim.cmd("BufferGoto 7")
				end,
				desc = "Goto buffer 7",
			},
			{
				"<A-8>",
				function()
					vim.cmd("BufferGoto 8")
				end,
				desc = "Goto buffer 8",
			},
			{
				"<A-9>",
				function()
					vim.cmd("BufferGoto 9")
				end,
				desc = "Goto buffer 9",
			},
			{
				"<A-0>",
				function()
					vim.cmd.BufferLast()
				end,
				desc = "Goto last buffer",
			},

			-- Pin/unpin buffer
			{
				"<A-p>",
				function()
					vim.cmd.BufferPin()
				end,
				desc = "Pin buffer",
			},

			-- Close buffer
			{
				"<A-c>",
				function()
					vim.cmd.BufferClose()
				end,
				desc = "Close buffer",
			},

			-- Restore buffer
			{
				"<A-S-c>",
				function()
					vim.cmd.BufferRestore()
				end,
				desc = "Restore buffer",
			},

			-- Magic buffer-picking mode
			{
				"<C-p>",
				function()
					vim.cmd.BufferPick()
				end,
				desc = "Pick buffer",
			},
			{
				"<C-S-p>",
				function()
					vim.cmd.BufferPickDelete()
				end,
				desc = "Pick buffer to delete",
			},

			-- Sort automatically by...
			{
				"<leader>obb",
				function()
					vim.cmd.BufferOrderByBufferNumber()
				end,
				desc = "Order by buffer number",
			},
			{
				"<leader>obn",
				function()
					vim.cmd.BufferOrderByName()
				end,
				desc = "Order by name",
			},
			{
				"<leader>obd",
				function()
					vim.cmd.BufferOrderByDirectory()
				end,
				desc = "Order by directory",
			},
			{
				"<leader>obl",
				function()
					vim.cmd.BufferOrderByLanguage()
				end,
				desc = "Order by language",
			},
			{
				"<leader>obw",
				function()
					vim.cmd.BufferOrderByWindowNumber()
				end,
				desc = "Order by window number",
			},
		},
	},
}
