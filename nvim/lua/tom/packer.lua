vim.cmd [[packadd packer.nvim]]
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
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { -- Telescope
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
}

    use {
        'folke/tokyonight.nvim', -- Tokyo Night theme 
        config = function()
            vim.cmd('colorscheme tokyonight')
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter', -- Better syntax highlightings
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    }

  use {
      'mbbill/undotree' -- Undo tree for mistakes
  }

  -- Git vim integration
  use {
      'tpope/vim-fugitive'
  }
  -- LSP
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

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Literally emacs which-key
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup()
        end
    }

    -- Error and warning buffer
    use {
        "folke/trouble.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    }

    use {
        'nvim-tree/nvim-web-devicons'
    }

    -- Pairs matching
    use {
        'echasnovski/mini.nvim',
        config = function()
            require('mini.pairs').setup()
        end
    }

    -- Terminal popup
    use {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup()
        end
    }

    -- GitLens plugin for nvim (kind of)
    use {
        "f-person/git-blame.nvim",
    }

    -- Tree status bar
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    }

    -- Generates tags for functions to quicky jump with F8
    use {
        "preservim/tagbar"
    }

    -- Comment and uncomment regions with gc or gcc
    use {
        "tpope/vim-commentary"
    }

    use {
        'dgagn/diagflow.nvim',
        config = function()
            require('diagflow').setup()
        end
    }

    use {
        'onsails/lspkind.nvim'
    }

    use {
        'doxnit/cmp-luasnip-choice',
        config = function()
            require('cmp_luasnip_choice').setup({
                auto_open = true
            })
        end
    }

    use {
        'delphinus/cmp-ctags'
    }

    -- Multi-line editing with C-n
    use {
        'terryma/vim-multiple-cursors'
    }
    if packer_bootstrap then
        require('packer').sync()
    end
end)
