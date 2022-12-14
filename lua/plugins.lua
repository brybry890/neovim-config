
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  
  use 'andrejlevkovitch/vim-lua-format'
  use "savq/melange"

  use {
  	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.0',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
  	'kyazdani42/nvim-tree.lua',
  	requires = {
    		'kyazdani42/nvim-web-devicons', -- optional, for file icons
  	},
  }

  use {
  	'VonHeikemen/lsp-zero.nvim',
  	requires = {
    	-- LSP Support
    	{'neovim/nvim-lspconfig'},
    	{'williamboman/mason.nvim'},
    	{'williamboman/mason-lspconfig.nvim'},

    	-- Autocompletion
    	{'hrsh7th/nvim-cmp'},
    	{'hrsh7th/cmp-buffer'},
    	{'hrsh7th/cmp-path'},
    	{'saadparwaiz1/cmp_luasnip'},
    	{'hrsh7th/cmp-nvim-lsp'},
    	{'hrsh7th/cmp-nvim-lua'},

    	-- Snippets
    	{'L3MON4D3/LuaSnip'},
    	{'rafamadriz/friendly-snippets'},
    }
  }

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use "numToStr/FTerm.nvim"

end)
