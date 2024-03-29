return {
	'linux-cultist/venv-selector.nvim',
	dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
	config = function()
		require('venv-selector').setup({
			anaconda_base_path = '/private/home/mortimer/anaconda3/',
			anaconda_envs_path = '/private/home/mortimer/anaconda3/envs',
		})
		vim.api.nvim_create_autocmd('VimEnter', {
			desc = 'Auto select virtualenv Nvim open',
			pattern = '*',
			callback = function()
				local venv = vim.fn.findfile('pyproject.toml', vim.fn.getcwd() .. ';')
				if venv ~= '' then
					require('venv-selector').retrieve_from_cache()
				end
			end,
			once = true,
		})
	end,
	event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
	keys = {
		-- Keymap to open VenvSelector to pick a venv.
		{ '<leader>cs', '<cmd>VenvSelect<cr>',       desc = "choose conda environment" },
		-- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
		{ '<leader>cc', '<cmd>VenvSelectCached<cr>', desc = "use cached conda env" },
	},
}
