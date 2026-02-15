local map = vim.keymap.set

map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<A-'>", ":lua require('FTerm').open()<CR>")
map('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>')

-- disable arrow keys for blazigly fast hjkl
map("", "<Up>", "<Nop>")
map("", "<Down>", "<Nop>")
map("", "<Right>", "<Nop>")
map("", "<Left>", "<Nop>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- markDOWN
map("n", "<leader>md", ":RenderMarkdown<CR>")
map("n", "<leader>mo", ":RenderMarkdown disable<CR>")
map("n", "<leader>mp", ":RenderMarkdown preview<CR>")

-- barbar lolkek
map("n", "<leader>bn", ":bnext<CR>")
map("n", "<leader>bp", ":bprevious<CR>")
map("n", "<leader>q", ":BufferClose<CR>")
map("n", "<leader>Q", ":BufferClose!<CR>")

map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')

-- other useful stuff
map("n", "<leader>s", ":%s//g<Left><Left>")
map("n", "<leader>nt", ":NvimTreeToggle<CR>") 
map("n", "<leader>P", ":PlugInstall<CR>")
map("n", "<leader>R", ":so %<CR>")
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>W", ":wq<CR>")
map("n", "<leader>p", ":PlugInstall<CR>")
map("n", "<leader>x", "<cmd>!chmod +x %<CR>")

-- fzf-lua
map("n", "<leader>f", ":lua require('fzf-lua').files()<CR>")
map("n", "<leader>Fh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>") 
map("n", "<leader>Fc", ":lua require('fzf-lua').files({ cwd = '~/.config' })<CR>") 
