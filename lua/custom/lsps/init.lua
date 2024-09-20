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
  emmet_config = {
    cmd = { 'emmet-language-server', '--stdio' },
    filetypes = { 'css', 'html' },
    single_file_support = true,
  },
  tailwind_css_config = {
    cmd = { 'tailwindcss-language-server', '--stdio' },
    filetypes = {
      -- 'eelixir',
      -- 'elixir',
      'gohtml',
      'gohtmltmpl',
      'html-eex',
      'heex',
      'markdown',
      'css',
      'sass',
      'scss',
      'javascript',
      'templ',
      'html',
    },
    root_dir = util.root_pattern('tailwind.config.js', '.git', 'package.json', 'tailwind.config.ts'),
    settings = {
      tailwindCSS = {
        classAttributes = { 'class', 'className', 'class:list', 'classList', 'ngClass' },
        includeLanguages = {
          eelixir = 'html-eex',
          templ = 'html',
        },
        lint = {
          cssConflict = 'warning',
          invalidApply = 'error',
          invalidConfigPath = 'error',
          invalidScreen = 'error',
          invalidTailwindDirective = 'error',
          invalidVariant = 'error',
          recommendedVariantOrder = 'warning',
        },
        validate = true,
      },
    },
  },
  vscode_html_config = {
    cmd = { 'vscode-html-language-server', '--stdio' },
    filetypes = { 'html', 'templ' },
    init_options = {
      configurationSection = { 'html', 'css', 'javascript' },
      embeddedLanguages = {
        css = true,
        javascript = true,
      },
      provideFormatter = true,
    },
    single_file_support = true,
  },
}
