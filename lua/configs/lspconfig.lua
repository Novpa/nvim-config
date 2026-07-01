local nvlsp = require "nvchad.configs.lspconfig"

for _, server in ipairs({ "html", "cssls" }) do
  vim.lsp.config(server, {
    capabilities = nvlsp.capabilities,
  })
end

vim.lsp.config("pylsp", {
  capabilities = nvlsp.capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { "W391", "E501" },
          maxLineLength = 100,
        },
      },
    },
  },
})

vim.diagnostic.config({
  severity_sort = true,
  underline = {
    severity = { min = vim.diagnostic.severity.ERROR } 
  },
  virtual_text = {
    spacing = 4,
    prefix = "■",
    severity = { min = vim.diagnostic.severity.ERROR } 
  },
  signs = {
    severity = { min = vim.diagnostic.severity.ERROR } 
  },
  update_in_insert = false,
})

vim.lsp.enable({ "html", "cssls", "pylsp" })
