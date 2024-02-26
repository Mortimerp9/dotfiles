return { -- Multi Cursor
	-- https://github.com/chrisgrieser/.config/blob/106d4eb2f039f1b9506fd5cfeed7e7d09f832e87/nvim/lua/plugins/bulk-processing.lua#L3C12-L3C12
	"mg979/vim-visual-multi",
	event = "VeryLazy",
	init = function()
		-- Multi-Cursor https://github.com/mg979/vim-visual-multi/blob/master/doc/vm-mappings.txt
		-- vim.g.VM_leader = "\\"
		vim.g.VM_theme = "purplegray"

		vim.g.VM_maps = {
			["Find Under"] = "<C-d>",
			["Find Subword Under"] = "<C-d>", -- firstly select some text, then <M-b>
		}

		-- https://github.com/mg979/vim-visual-multi/wiki/Mappings#full-mappings-list
		vim.g.VM_set_statusline = 0 -- already set via lualine component
	end,
}
