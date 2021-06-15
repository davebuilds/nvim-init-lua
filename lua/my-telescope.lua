-- My setup for telescope

require('telescope').setup{}

-- temporarily disable telescop-project. There was an unknown issue. 
-- TODO: Try to re-enable it after 06/20
-- require('telescope').load_extension('project')

local utils = require('utils')  -- ./lua/utils.lua

-- Key map
utils.map('n', '<Leader>f', ':Telescope find_files<CR>')
utils.map('n', '<Leader>b', ':Telescope buffers<CR>')
