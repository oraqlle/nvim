-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} },
	  config = require('telescope').setup({
		  defaults = {
			  borderchars = { "█", " ", "▀", "█", "█", " ", " ", "▀" }
		  }
	  })
  }

  use {
	  "loctvl842/monokai-pro.nvim",
	  config = function()
		  require("monokai-pro").setup({
			  filter = "spectrum",
			  background_clear = {}
		  })
	  end
  }
  vim.cmd([[colorscheme monokai-pro]])

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		          'williamboman/mason.nvim',
		          run = function()
			          pcall(vim.cmd, 'MasonUpdate')
		          end,
	          },
	          {'williamboman/mason-lspconfig.nvim'}, -- Optional

	          -- Autocompletion
	          {'hrsh7th/nvim-cmp'},     -- Required
	          {'hrsh7th/cmp-nvim-lsp'}, -- Required
	          {'L3MON4D3/LuaSnip'},     -- Required
          }
  }
end)
