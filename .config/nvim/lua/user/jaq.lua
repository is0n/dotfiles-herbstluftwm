local status_ok, jaq = pcall(require, "jaq-nvim")
if not status_ok then
  return
end

jaq.setup{
	cmds = {
		default = "float",
		external = {
			markdown = "glow %",
      yuck     = "eww logs",
			lua      = "lua %",
			sh       = "./%",
		},
	},
	ui = {
		startinsert = false,
		float = {
			border = "rounded",
			border_hl = "NONE",
		},
	}
}

vim.api.nvim_set_keymap("n", "<Leader>r", ":Jaq float<CR>", { noremap = true, silent = true })
