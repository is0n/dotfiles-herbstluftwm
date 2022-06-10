local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 1,
  completeopt = { "menu", "menuone", "noselect" }, 
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = false,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 0,
  laststatus = 0,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 150,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = false,
  number = true,
  relativenumber = false,
  numberwidth = 4,
  signcolumn = "yes",
  ruler = false,
  wrap = false,
  background = "dark",
  scrolloff = 8,
  sidescrolloff = 8,
  fillchars = "eob: ",
  autochdir = true
}

vim.opt.shortmess:append "c"
vim.g.markdown_fenced_languaged = { "lua" }

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[ set whichwrap+=<,>,[,],h,l ]]
vim.cmd [[ set iskeyword+=- ]]
