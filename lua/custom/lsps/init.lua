local util = require 'lspconfig.util'
return {
  elixirls_config = {
    filetypes = { 'elixir', 'eelixir', 'heex', 'surface' },
    settings = {
      elixirLS = {
        dialyzerEnabled = true,
        fetchDeps = true,
      },
    },
    single_file_support = true,
  },
  -- C LSP
  clangdeez_nuts_config = {
    cmd = { 'clangd' },
    filetypes = { 'c', 'cpp', 'cuda', 'proto' },
    single_file_support = true,
  },
  gopls_config = {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
    single_file_support = true,
    settings = {
      gopls = {
        completeUnimported = true,
        usePlaceholders = true,
        analysis = {
          unusedparams = true,
        },
      },
    },
  },
  -- Zig LSP
  zls_config = {
    cmd = { 'zls' },
    filetypes = { 'zig', 'zir' },
    single_file_support = true,
  },
  pyright_config = {
    cmd = { 'pyright-langserver', '--stdio' },
    filetypes = { 'python' },
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagonsitcMode = 'openFilesOnly',
          useLibraryCodeForTypes = true,
        },
      },
    },
    single_file_support = true,
  },
  emmet_config = {},
  tailwind_css_config = {},
  vscode_html_config = {},
  cds_lsp = {
    cmd = {
      -- Since we installed cds-lsp globally, we can refer to it using this command
      vim.fn.expand 'cds-lsp',
      -- And then remembering to kindly ask it to be ready for some sweet stdio communication
      '--stdio',
    },
    -- Also remember to tell it which files it actually works with!
    filetypes = { 'cds' },
    root_dir = util.root_pattern('.git', 'package.json'),
    settings = {},
  },
}
