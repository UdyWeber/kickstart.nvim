-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'tpope/vim-dadbod',
    'kristijanhusak/vim-dadbod-completion',
    'kristijanhusak/vim-dadbod-ui',
  },
  {
    'rest-nvim/rest.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'j-hui/fidget.nvim',
      'nvim-neotest/nvim-nio',
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        table.insert(opts.ensure_installed, 'http')
      end,
    },
  },
  {
    'NvChad/nvim-colorizer.lua',
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
  { 'mrcjkb/rustaceanvim' },
  { 'ThePrimeagen/vim-be-good' },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
  { 'mrcjkb/rustaceanvim' },
  { 'ThePrimeagen/vim-be-good' },
}
