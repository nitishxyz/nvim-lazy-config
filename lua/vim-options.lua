vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " " 

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Set clipboard to system clipboard
vim.cmd("set clipboard=unnamedplus")

-- Copy to clipboard
vim.keymap.set('n', '<leader>y', '+y')
vim.keymap.set('n', '<leader>Y', '+Y')
vim.keymap.set('n', '<leader>yy', '+yy')

-- Paste from clipboard
vim.keymap.set('n', '<leader>p', '+p')
vim.keymap.set('n', '<leader>P', '+P')

-- Insert mode mappings
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<Right>')


vim.wo.number = true
