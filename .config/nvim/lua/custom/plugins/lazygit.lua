return {
	"kdheepak/lazygit.nvim",
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
	    -- set keymaps
	    local keymap = vim.keymap -- for conciseness

	    keymap.set("n", "<leader>gg", "<cmd>:LazyGit<cr>", { desc = "Open LazyGit" })
	    require("telescope").load_extension("lazygit")
	end,
}
