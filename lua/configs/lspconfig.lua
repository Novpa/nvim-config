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

vim.lsp.enable({ "html", "cssls", "pylsp" })
