vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Fuzzy finder
  use { 'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = {{ 'nvim-lua/plenary.nvim' }}
      }

  -- Colorscheme
  use { 'catppuccin/nvim', as = 'catppuccin',
    config = function()
      vim.cmd('colorscheme catppuccin')
    end
  }

  use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
  use 'theprimeagen/harpoon' 

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim', run = ':MasonUpdate' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' }, 
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' }, 
    }
  }

  use { 'zbirenbaum/copilot.lua', cmd = 'Copilot', event = 'InsertEnter', 
    config = function()
      require('copilot').setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = '<C-g>',
          },
        },
      })
    end
}

  use 'nvim-tree/nvim-tree.lua'

end)
