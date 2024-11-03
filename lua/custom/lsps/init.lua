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
  pyright_config = {},
  emmet_config = {},
  tailwind_css_config = {},
  vscode_html_config = {},
  ruff_config = {},
  emmet_config = {},
  tailwind_css_config = {},
  js_ts_config = {},
  eslint_config = {},
  vscode_html_config = {},
  rust_analyzer_config = {},
}
