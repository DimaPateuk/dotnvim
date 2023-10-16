require('ensure_packer')

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- All the lua functions I don't want to write twice.
    use "nvim-lua/plenary.nvim"
    -- Theme
    use "rebelot/kanagawa.nvim"

    use {
	    'nvim-tree/nvim-tree.lua',
	    requires = {
		    'nvim-tree/nvim-web-devicons',
	    }, 
    }

    use 'neovim/nvim-lspconfig'



    -- autocomplete
    use "onsails/lspkind-nvim"
    use "L3MON4D3/LuaSnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/nvim-cmp"


    -- syntax highlit
    use "nvim-treesitter/nvim-treesitter"



    -- find files or string in files
	use { "ibhagwan/fzf-lua",
	  -- optional for icon support
	  requires = { "nvim-tree/nvim-web-devicons" }
	}


    -- comment
    use "terrortylor/nvim-comment"


    -- required for eslint and prettier
    use('jose-elias-alvarez/null-ls.nvim')

    -- prettier
    use('MunifTanjim/prettier.nvim')

    -- eslint
    use ('MunifTanjim/eslint.nvim')
 
end)
