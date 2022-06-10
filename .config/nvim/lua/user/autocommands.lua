vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*" },
  command = [[setlocal formatoptions-=cro]],
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.conf" },
  command = [[set ft=conf]],
})

vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  pattern = { "*" },
  command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]],
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\\s\\+$//e]],
})

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  pattern = { "*" },
  command = [[silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})]],
})

vim.api.nvim_create_autocmd({ "Filetype" }, {
  pattern = { "markdown" },
  command = [[setlocal spell | setlocal wrap]],
})

vim.api.nvim_create_autocmd({ "Filetype" }, {
  pattern = { "qf", "man", "lspinfo", "help" },
  command = [[nnoremap <silent> <buffer> q :close<CR>]],
})

vim.api.nvim_create_autocmd({ "Filetype" }, {
  pattern = { "qf" },
  command = [[set nobuflisted]],
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
