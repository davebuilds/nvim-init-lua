-- My setup for telescope

require('telescope').setup{}
require('telescope').load_extension('project')

local utils = require('utils')  -- ./lua/utils.lua

-- Key map
utils.map('n', '<Leader>ff', ':Telescope find_files<CR>')
utils.map('n', '<Leader>fgf', ':Telescope git_files<CR>')
utils.map('n', '<Leader>fb', ':Telescope buffers<CR>')
