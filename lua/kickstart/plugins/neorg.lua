return {
  {
    'vhyrro/luarocks.nvim',
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true, -- This automatically runs `require("luarocks-nvim").setup()`
  },
  {
    'nvim-neorg/neorg',
    dependencies = { 'luarocks.nvim' },
    version = '*',
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},
          ['core.completion'] = {
            config = {
              engine = 'nvim-cmp',
              name = '[Neorg]',
            },
          },
          ['core.concealer'] = {
            config = {
              icon_preset = 'diamond',
            },
          },
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = '~/workspace/notes',
              },
              default_workspace = 'notes',
            },
          },
        },
      }

      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
  },
}
