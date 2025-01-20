-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'pmizio/typescript-tools.nvim',
    opts = {

      settings = {
        expose_as_code_action = 'all',
        tsserver_file_preferences = {
          includeInlayParameterNameHints = 'literals',
          includeInlayFunctionParameterTypeHints = true,
          includeInlayVariableTypeHints = false,
          includeInlayPropertyDeclarationTypeHints = false,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayEnumMemberValueHints = false,
          includeCompletionsForModuleExports = true,
          importModuleSpecifierEnding = 'minimal',
          quotePreference = 'single',
        },
        tsserver_format_preferences = {
          semicolons = 'remove',
          insertSpaceBeforeFunctionParenthesis = true,
        },
        complete_function_calls = true,
      },
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'neovim/nvim-lspconfig',
        opts = {
          -- make sure mason installs the server
          servers = {
            tsserver = {
              enabled = false,
            },
            gleam = {
              enabled = true,
            },
            denols = {},
          },
        },
      },
    },
    event = 'VeryLazy',
  },
}
