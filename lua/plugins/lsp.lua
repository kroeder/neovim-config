-- /lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          root_dir = function(...)
            return require("lspconfig").util.root_pattern(".git")(...)
          end,
          settings = {
            typescript = {
              preferences = {
                includeCompletionsForModuleExports = true,
                includeCompletionsForImportStatements = true,
                importModuleSpecifier = "non-relative",
              },
            },
          },
        },
      },
    },
  },
}
