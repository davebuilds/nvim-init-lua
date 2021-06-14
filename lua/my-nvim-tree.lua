local utils = require('utils')

utils.map('n', '<leader>t', ':NvimTreeToggle<CR>')

vim.g.nvim_tree_show_icons = {git = 0, folders = 0, files = 0}  -- disable all icons as I haven't been able to set up them properly

