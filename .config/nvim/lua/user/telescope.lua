local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup {
	defaults = {
		prompt_prefix = ' ❯ ',
    selection_caret = " ",
    -- path_display = { "smart" },
		color_devicons = true,

		sorting_strategy = 'ascending',
		layout_config = {
			prompt_position = 'top',
		}
	}
}

vim.api.nvim_set_keymap("n", "<Leader>f", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":Telescope oldfiles<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>g", ":Telescope live_grep<CR>", { noremap = true, silent = true })
