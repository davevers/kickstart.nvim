return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').add {
        { '<leader>c', group = '[C]ode' },
        { '<leader>c_', hidden = true },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>d_', hidden = true },
        { '<leader>r', group = '[R]ename' },
        { '<leader>r_', hidden = true },
        { '<leader>s', group = '[S]earch' },
        { '<leader>s_', hidden = true },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>w_', hidden = true },
      }
    end,
  },
  {
    'mrjones2014/smart-splits.nvim',
    opts = {},
    lazy = false,
    config = function()
      local splits = require 'smart-splits'
      vim.keymap.set('n', '<C-S-h>', splits.resize_left)
      vim.keymap.set('n', '<C-S-j>', splits.resize_down)
      vim.keymap.set('n', '<C-S-k>', splits.resize_up)
      vim.keymap.set('n', '<C-S-l>', splits.resize_right)
      -- moving between splits
      vim.keymap.set('n', '<C-h>', splits.move_cursor_left)
      vim.keymap.set('n', '<C-j>', splits.move_cursor_down)
      vim.keymap.set('n', '<C-k>', splits.move_cursor_up)
      vim.keymap.set('n', '<C-l>', splits.move_cursor_right)
      vim.keymap.set('n', '<C-\\>', splits.move_cursor_previous)
      -- swapping buffers between windows
      vim.keymap.set('n', '<leader><leader>h', splits.swap_buf_left)
      vim.keymap.set('n', '<leader><leader>j', splits.swap_buf_down)
      vim.keymap.set('n', '<leader><leader>k', splits.swap_buf_up)
      vim.keymap.set('n', '<leader><leader>l', splits.swap_buf_right)
    end,
  },
  -- Color preview for hex codes
  { 'norcalli/nvim-colorizer.lua' },
  {
    -- highlighting for chezmoi files template files
    'alker0/chezmoi.vim',
    init = function()
      vim.g['chezmoi#use_tmp_buffer'] = 1
      vim.g['chezmoi#source_dir_path'] = os.getenv 'HOME' .. '/.local/share/chezmoi'
    end,
  },
}
