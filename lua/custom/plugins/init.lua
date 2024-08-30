-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'elixir-tools/elixir-tools.nvim',
    version = '*',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local elixir = require 'elixir'
      elixir.setup {
        elixirls = { enable = false },
        projectionist = { enable = true },
        nextls = {
          enable = true,
          init_options = {
            extensions = {
              credo = { enable = true },
            },
            mix_env = 'dev',
            mix_target = 'host',
            experimental = {
              completions = { enable = true },
            },
          },
        },
      }
    end,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
}
