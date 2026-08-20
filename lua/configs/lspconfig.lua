require("nvchad.configs.lspconfig").defaults()

-- 1. Path plugin Vue untuk TypeScript
local vue_language_server_path = vim.fn.stdpath "data"
  .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

-- 2. Konfigurasi ts_ls agar mengenali file .vue
vim.lsp.config("ts_ls", {
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_language_server_path,
        languages = { "vue" },
      },
    },
  },
})

-- 3. Konfigurasi vue_ls (Volar)
vim.lsp.config("vue_ls", {
  filetypes = { "vue" },
})

-- 4. Aktifkan semua server
local servers = { "html", "cssls", "lua_ls", "eslint", "ts_ls", "vue_ls" }
vim.lsp.enable(servers)
