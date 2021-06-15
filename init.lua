-- Map leader to space
vim.g.mapleader = '\\'

require('plugins')  -- ./lua/plugins.lua
local utils = require('utils')  -- ./lua/utils.lua

utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('b', 'swapfile', false)

-- place this after require('plugins') as the colorscheme come from a plugin
vim.g.neon_style = 'dark'  --- other options: default, doom, dark
vim.cmd[[colorscheme neon]]

require('my-telescope')
require('my-nvim-tree')
require('my-lsp')
require('my-efm')
require('my-nvim-compe')
require('my-autocommands')
