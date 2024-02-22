return {
	"AckslD/nvim-neoclip.lua",
	requires = {
		{ 'nvim-telescope/telescope.nvim' },
	},
	keys = {
		{ "<leader>sc", "<cmd>Telescope neoclip<cr>", desc = "Neoclip" },
	},
	config = function()
		require('neoclip').setup()
	end,
}
