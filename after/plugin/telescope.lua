local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader><S-f>", function()
	require("telescope.builtin").live_grep()
end, {desc = "Telescope live grep" });

require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules", ".git/", "dist", "build" }
	}
})

require("telescope").load_extension("fzf")
