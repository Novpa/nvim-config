return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save  
    cmd = {
      "ConformInfo"
    },
    
     config = function()
    local options = require("configs.conform") -- Ini memanggil file conform.lua Anda
    require("conform").setup(options)
  end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
