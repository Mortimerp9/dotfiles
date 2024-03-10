return {
	-- Set lualine as statusline
	'nvim-lualine/lualine.nvim',
	-- See `:help lualine.txt`
	config = function()
		local actived_venv = function()
			local venv_name = require('venv-selector').get_active_venv()
			if venv_name ~= nil then
				return string.gsub(venv_name, '.*/pypoetry/virtualenvs/', '(poetry) ')
			else
				return 'venv'
			end
		end
		require('lualine').setup({
			icons_enabled = false,
			theme = 'auto',
			component_separators = '|',
			section_separators = '',
			lualine_x = { actived_venv, 'encoding', 'fileformat', 'filetype' },
		})
	end,
}
