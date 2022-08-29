


vim.opt.termguicolors = true

vim.cmd("colorscheme melange")
vim.cmd("set smartindent")
vim.cmd("set noswapfile")
vim.cmd("set nu")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

require('lualine').setup()
require("nvim-tree").setup()

require('go').setup()

-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

vim.api.nvim_set_keymap(
  "n",
  "ff",
  ":Telescope find_files<cr>",
  { noremap = true }
)

vim.api.nvim_set_keymap(
  "n",
  "n",
  ":NvimTreeToggle<cr>",
  { noremap = true }
)


require'FTerm'.setup({
	cmd = "PowerShell"
})


vim.keymap.set('n', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
