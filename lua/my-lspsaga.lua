require 'utils'
local saga = require 'lspsaga'

saga.init_lsp_saga()
vim.cmd('nnoremap <silent><leader>ca :Lspsaga code_action<CR>')
vim.cmd('nnoremap <silent>K :Lspsaga hover_doc<CR>')
