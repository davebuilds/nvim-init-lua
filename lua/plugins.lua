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

  -- Telescope: Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
  }

  -- temporarily disable telescop-project. There was an unknown issue. 
  -- TODO: Try to re-enable it after 06/20
  -- use 'nvim-telescope/telescope-project.nvim'

  -- Editor config
  use 'editorconfig/editorconfig-vim'

  -- neon colorscheme
  use 'rafamadriz/neon'

  -- file tree
  use 'kyazdani42/nvim-tree.lua'

  -- lsp-config: collection of common configs for neovim's built-in lsp client
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'

  -- completion engine
  use 'hrsh7th/nvim-compe'
end)

