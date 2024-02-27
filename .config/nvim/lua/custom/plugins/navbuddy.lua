return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"SmiteshP/nvim-navbuddy",
			dependencies = {
				"SmiteshP/nvim-navic",
				"MunifTanjim/nui.nvim"
			},
			opts = { lsp = { auto_attach = true } }
		}
	},
	keys = {
		{ "<leader>n", function() require("nvim-navbuddy").open() end, desc = "Code Outline (navbuddy)", },
	},
}
