local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end


local vim = vim
local Plug = vim.fn['plug#']

vim.g.start_time = vim.fn.reltime()
vim.loader.enable() 
vim.call('plug#begin')
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-web-devicons')
Plug('romgrk/barbar.nvim')
Plug('nvim-treesitter/nvim-treesitter', { [ 'build' ] = ':TSUpdate' })
Plug('ibhagwan/fzf-lua')
Plug('windwp/nvim-autopairs')
Plug('numToStr/FTerm.nvim')
Plug('catppuccin/nvim', { [ 'as' ] = 'catppuccin' })
Plug('norcalli/nvim-colorizer.lua')
Plug('MeanderingProgrammer/render-markdown.nvim')
vim.call('plug#end')

require("config.options")
require("config.keybinds")

require("plugins.autopairs")
require("plugins.barbar")
require("plugins.colorizer")
require("plugins.colorscheme")
require("plugins.fzf-lua")
require("plugins.nvim-tree")
require("plugins.term")
require("plugins.treesitter")
