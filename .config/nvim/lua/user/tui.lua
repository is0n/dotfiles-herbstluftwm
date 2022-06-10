local status_ok, tui = pcall(require, "tui-nvim")
if not status_ok then
  return
end

function Lf()
  tui:new {
    cmd      = "~/.config/lf/startlf -selection-path /tmp/tui-nvim " .. vim.fn.fnameescape(vim.fn.expand("%:p")),
  }
end

function Tig()
  tui:new {
    cmd      = "tig -C " .. vim.fn.fnameescape(vim.fn.expand("%:p:h")),
    width    = 0.3,
    height   = 0.6,
    x        = 1,
    y        = 1
  }
end

vim.cmd [[ command! Lf :lua Lf() ]]
vim.cmd [[ command! Tig :lua Tig() ]]
vim.api.nvim_set_keymap("n", "<Leader>l", ":Lf<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>t", ":Tig<CR>", { noremap = true, silent = true })
