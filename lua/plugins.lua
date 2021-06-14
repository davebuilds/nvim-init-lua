local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manager it self
  use 'wbthomason/packer.nvim'

  -- Reload your entire config completely
  use {
    'famiu/nvim-reload',
    requires = {{'nvim-lua/plenary.nvim'}}
  }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
  }
  require('telescope').setup{}

  use 'nvim-telescope/telescope-project.nvim'
  require('telescope').load_extension('project')

  -- neon colorscheme
  use 'rafamadriz/neon'
end)

