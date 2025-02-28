return {
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    'cbochs/grapple.nvim',
    opts = {
      scope = 'git', -- also try out "git_branch"
    },
    event = { 'BufReadPost', 'BufNewFile' },
    cmd = 'Grapple',
    keys = {
      { '<leader>m', '<cmd>Grapple toggle<cr>', desc = 'Grapple toggle tag' },
      { '<leader>M', '<cmd>Grapple toggle_tags<cr>', desc = 'Grapple open tags window' },
      { '<leader>n', '<cmd>Grapple cycle_tags next<cr>', desc = 'Grapple cycle next tag' },
      { '<leader>p', '<cmd>Grapple cycle_tags prev<cr>', desc = 'Grapple cycle previous tag' },
    },
  },
  {
    'folke/trouble.nvim',
    opts = {},
  },
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  -- {
  --   'stevearc/oil.nvim',
  --   opts = {},
  -- },
  {
    'mini.nvim',
    config = function()
      require('mini.comment').setup()
      require('mini.files').setup()
      require('mini.ai').setup {
        n_lines = 500,
      }
      require('mini.surround').setup {
        mappings = {
          add = ',sa', -- Add surrounding in Normal and Visual modes
          delete = ',sd', -- Delete surrounding
          find = ',sf', -- Find surrounding (to the right)
          find_left = ',sF', -- Find surrounding (to the left)
          highlight = ',sh', -- Highlight surrounding
          replace = ',sr', -- Replace surrounding
          update_n_lines = ',sn', -- Update `n_lines`
          suffix_last = 'l', -- Suffix to search with "prev" method
          suffix_next = 'n', -- Suffix to search with "next" method
        },
      }
    end,
    keys = {
      {
        '<leader>fm',
        function()
          if not MiniFiles.close() then
            require('mini.files').open(vim.api.nvim_buf_get_name(0), true)
          end
        end,
        desc = 'Open mini.files (Directory of Current File)',
      },
    },
  },
}
