return {
  'nvim-neorg/neorg',
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
        ['core.concealer'] = {},
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/workspace/neorg-notes',
            },
            default_workspace = 'notes',
          },
        },
      },
    }
    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
