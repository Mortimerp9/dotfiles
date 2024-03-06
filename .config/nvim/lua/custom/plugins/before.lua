return {
	'bloznelis/before.nvim',
	keys = {
		{
			"<leader>k",
			function()
				require('before').jump_to_next_edit()
			end,
			desc = "Jump to Next Edit"
		},
		{
			"<leader>j",
			function()
				require('before').jump_to_last_edit()
			end,
			desc = "Jump to Last Edit"
		},
	},

	config = function()
		local before = require('before')
		before.setup()
	end
}
