return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function ()
		require('telescope').setup({
			defaults = {
				file_ignore_patterns = { '**/.git/' }
			},
			pickers = {
				find_files = {
					hidden = true
				}
			}
		})
	end
}
