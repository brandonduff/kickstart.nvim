-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- projectionist
  'tpope/vim-projectionist',
  'c-brenn/fuzzy-projectionist.vim',
  'andyl/vim-projectionist-elixir',

  'tpope/vim-surround',
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },

  -- neotest
  'jfpedroza/neotest-elixir',
  'nvim-neotest/nvim-nio',
  {
    'nvim-neotest/neotest',
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-elixir',
        },
      }
    end,
  },

  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<M-1>]],
      }
    end,
  },

  {
    'RRethy/nvim-treesitter-textsubjects',
    config = function()
      require('nvim-treesitter.configs').setup {
        textsubjects = {
          enable = true,
          prev_selection = ',', -- (Optional) keymap to select the previous selection
          keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
            ['i;'] = 'textsubjects-container-inner',
          },
        },
      }
    end,
  },
}
