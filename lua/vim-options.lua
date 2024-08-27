local map = vim.api.nvim_set_keymap



local opts = { noremap = true, silent = true }

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Navigate vim panes better
map("n", "<c-k>", ":wincmd k<CR>", opts)
map("n", "<c-j>", ":wincmd j<CR>", opts)
map("n", "<c-h>", ":wincmd h<CR>", opts)
map("n", "<c-l>", ":wincmd l<CR>", opts)

map("n", "<leader>h", ":nohlsearch<CR>", opts)

vim.cmd("set ignorecase")
vim.cmd("set smartcase")
-- Set clipboard to system clipboard
vim.cmd("set clipboard=unnamedplus")

map("n", "<space>e", ":lua vim.diagnostic.open_float()<CR>", opts)

-- Copy to clipboard
map("n", "<A-y>", "+y", opts)
map("n", "<A-Y>", "+Y", opts)
map("n", "<A-yy>", "+yy", opts)

-- Paste from clipboard
map("n", "<A-p>", "+p", opts)
map("n", "<A-P>", "+P", opts)

-- Insert mode mappings
map("i", "<C-h>", "<Left>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)

-- Move in insert mode
map("i", "<A-a>", "<Home>", opts)
map("i", "<A-e>", "<End>", opts)
map("i", "<A-h>", "<Left>", opts)
map("i", "<A-j>", "<Down>", opts)
map("i", "<A-k>", "<Up>", opts)
map("i", "<A-l>", "<Right>", opts)
map("i", "<A-d>", "<Del>", opts)
map("i", "<A-b>", "<C-Left>", opts)
map("i", "<A-f>", "<C-Right>", opts)
map("i", "<A-w>", "<C-Right>", opts)

-- Move to start/end of line
-- vim.keymap.set('n', 'H', '^')
-- vim.keymap.set('n', 'L', '$')

--
vim.wo.number = true


-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
--map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
--
--

-- mapping to reload LSP
map("n", "<leader>l", ":LspRestart<CR>", opts)

-- mapping for command palette :!
map("n", "<leader>k", ":!", { noremap = true, silent = false })


-- map("n", "<C-r>", ":Neotree filesystem reveal right<CR>", {})
map("n", "<C-r>", ":Neotree toggle<CR>", {})


local function toggle_diffthis()
  if vim.b.gitsigns_diffthis_toggle then
    vim.cmd('Gitsigns diffthis')  -- Close the diff
    vim.cmd('windo diffoff')      -- Close the diff view
    vim.b.gitsigns_diffthis_toggle = false
  else
    vim.cmd('Gitsigns diffthis')  -- Open the diff view
    vim.b.gitsigns_diffthis_toggle = true
  end
end



-- Navigation
map("n", "]c", ":Gitsigns next_hunk<CR>", opts)
map("n", "[c", ":Gitsigns prev_hunk<CR>", opts)

