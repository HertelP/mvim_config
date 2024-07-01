local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
  	use 'wbthomason/packer.nvim'
    use { "ellisonleao/gruvbox.nvim" }
    use { 
        "christoomey/vim-tmux-navigator",
        lazy = false
    }
    use { "catppuccin/nvim", as = "catppuccin"}
	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
--	Plug 'nvim-lua/plenary.nvim' 
	use('ThePrimeagen/harpoon')
	use('mbbill/undotree')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use({
        "jackMort/ChatGPT.nvim",
        config = function()
            require("chatgpt").setup({
                api_key_cmd = "pass show api/tokens/openai"
            })
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    use({
  "epwalsh/obsidian.nvim",
  tag = "*",  -- recommended, use latest release instead of latest commit
  requires = {
    -- Required.
    "nvim-lua/plenary.nvim",

  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "Personal",
          path = "~/Obsidian/Personal",
        },
        {
          name = "ComputerScience",
          path = "~/Obsidian/ComputerScience",
        },
        {
          name = "Rust",
          path = "~/Obsidian/Rust",
        },
        {
          name = "Suitcase",
          path = "~/Obsidian/Suitcase",
        },
      },
    })
  end,
})

    use {
        "tpope/vim-fugitive",
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use { 'mhartington/formatter.nvim' }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup {}
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    }
    if packer_bootstrap then
        require('packer').sync()
    end
end)
