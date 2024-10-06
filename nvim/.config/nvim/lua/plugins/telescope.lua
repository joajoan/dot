return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function ()
		require('telescope').setup({
			defaults = {
				file_ignore_patterns = { '**/.git/' }
			},
			pickers = {
				find_files = { hidden = true }
			}
		})
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
	 end
}
