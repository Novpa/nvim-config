
vim.lsp.enable({ "html", "cssls", "pylsp" })

-- Pylsp dengan config
vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { "W391", "E501"},
          maxLineLength = 100
        }
      }
    }
  }
})

vim.lsp.enable("pylsp")

-- read :h vim.lsp.config for changing options of lsp servers 
