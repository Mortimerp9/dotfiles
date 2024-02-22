return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = {
		"Trouble",
		"TroubleClose",
		"TroubleToggle",
		"TroubleRefresh",
	},
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<cr>",                       desc = "Toggle Trouble" },
		{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "Document Diagnostics" },
		{ "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",              desc = "Quickfix" },
	},
}
